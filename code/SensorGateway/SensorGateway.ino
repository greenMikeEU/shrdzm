#include "config/config.h"
#include <ESP8266WiFi.h>          //https://github.com/esp8266/Arduino
#include "Ticker.h"

extern "C" {
#include <espnow.h>
#include <user_interface.h>
}

// ESPNOW STUFF
uint8_t trigMac[6] {0xCE, 0x50, 0xE3, 0x15, 0xB7, 0x33};
uint8_t broadcastMac[] = {0x46, 0x33, 0x33, 0x33, 0x33, 0x33};

uint8_t gatewayMac[6];

uint8_t key[16] = {0x51, 0xA0, 0xDE, 0xC5, 0x46, 0xC6, 0x77, 0xCD,
                   0x99, 0xE8, 0x61, 0xF9, 0x08, 0x77, 0x7D, 0x00
                  };

Ticker ticker;
//bool PairingEnabled = false;
bool PairingEnabled = true;
int pairingCount = 0;


void pairingTicker()
{
    digitalWrite(LEDPIN, LOW);
    Serial.println("Pairing request sent...");

    char payload[20];//limit is liek 200bytes, but we don't need anything close to that
    sprintf(payload, "PAIRWITHME");

    uint8_t bs[strlen(payload)];
    memcpy(bs, &payload, strlen(payload));
    esp_now_send(broadcastMac, bs, strlen(payload));

    pairingCount++;
    if(pairingCount == 12)
    {
      Serial.println("Pairing finished...");
      ticker.detach();
    }
    digitalWrite(LEDPIN, HIGH);
}


void initVariant() 
{
  WiFi.mode(WIFI_AP);

  WiFi.macAddress(gatewayMac);
  gatewayMac[0] = 0xCE;
  gatewayMac[1] = 0x50;
  gatewayMac[2] = 0xE3;
  
  wifi_set_macaddr(SOFTAP_IF, &gatewayMac[0]);//new mac is set
}

void setup() 
{
  Serial.begin(9600);
  Serial.print("MAC: ");
  Serial.println(WiFi.macAddress());//take this and use it to modify the mac address above

  esp_now_init();
  esp_now_set_self_role(ESP_NOW_ROLE_COMBO);
  esp_now_add_peer(&broadcastMac[0], ESP_NOW_ROLE_SLAVE, 1, NULL, 0);
  esp_now_add_peer(&trigMac[0], ESP_NOW_ROLE_CONTROLLER, 1, &key[0], 16);
  esp_now_set_peer_key(&trigMac[0], &key[0], 16);
  esp_now_register_recv_cb([](uint8_t *mac, uint8_t *data, uint8_t len) 
  {
    Serial.write(data, len);
    Serial.println("");
  });
}

void loop() 
{
  if (Serial.available() > 0)
  {
    if ( Serial.read() == '$' ) 
    {
      String cmd = readSerial();

      if(cmd == "reset")
      {
#ifdef DEBUG
        Serial.println("Reset..");
#endif        
        ESP.restart();      
      }
      else if(cmd == "pair")
      {
#ifdef DEBUG
        Serial.println("Pairing running...");
#endif        
        pairingCount = 0;
        ticker.attach(5.0, pairingTicker);            
      }
    }
  }
}

String readSerial() 
{
  String cmd = "";
  byte inByte = 0;
  int counter = 0;
  bool finished = false;

  while (!finished)
  {
    while (Serial.available() == 0 && counter < 20) 
    { 
      delay(1); 
      counter++;
    }
    if(counter == 20)
    {
      finished = true;
    }
    else
    {
      counter = 0;
      inByte = Serial.read();
      
      if (inByte == '\n')
      {
        finished = true;
      }
      else
      {
        cmd += (char)inByte;
      }
    }    
  }
      
  #ifdef DEBUG
  Serial.println("");  
  Serial.println("entered:"+cmd);  
  #endif     

  return cmd;
}
