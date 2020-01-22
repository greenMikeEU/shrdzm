#include "config/config.h"
#include "SensorDataExchange.h"

#include <ESP8266WiFi.h>
#include <Ticker.h>                                           // For LED status
#include <EEPROM.h>

#ifdef DHT22_SUPPORT
#include "DHTesp.h"
#endif

bool PairingEnabled = false;
Ticker ticker;
bool forceReset = false;
volatile boolean callbackCalled;

#ifdef DHT22_SUPPORT
DHTesp dht;
#endif

uint8_t broadcastMac[] = {0x46, 0x33, 0x33, 0x33, 0x33, 0x33};
uint8_t trigMac[6] {0xCE, 0x50, 0xE3, 0x15, 0xB7, 0x33};// MAC ADDRESS OF ALL TRIG BOARDS 6 bytes
uint8_t gatewayMac[6];

uint8_t key[16] = {0x51, 0xA0, 0xDE, 0xC5, 0x46, 0xC6, 0x77, 0xCD,
                   0x99, 0xE8, 0x61, 0xF9, 0x08, 0x77, 0x7D, 0x00
                  };

extern "C" {
  #include <espnow.h>
  #include <user_interface.h>
}

void writeGatewayAddressToEEPROM(uint8_t *xmac)
{
  int i;

  xmac[0] = 0xCE;
  xmac[1] = 0x50;
  xmac[2] = 0xE3;

  for(i=0;i<6;i++)
  {
    EEPROM.write(i,xmac[i]);
  }
  EEPROM.commit();
}

void readGatewayAddressFromEEPROM()
{
  int i;
  for(i=0;i<6;i++)
  {    
    gatewayMac[i]=EEPROM.read(i);
  }  
}
 
void initVariant() 
{
  WiFi.mode(WIFI_AP);

  pinMode(PAIRING_PIN, INPUT_PULLUP);

  if(digitalRead(PAIRING_PIN) == false)
  {
    wifi_set_macaddr(SOFTAP_IF, &broadcastMac[0]);
  }
  else
  {
    wifi_set_macaddr(SOFTAP_IF, &trigMac[0]);
  }
}

String macToStr(const uint8_t* mac)
{
  String result;
  for (int i = 0; i < 6; ++i) {
    result += String(mac[i], 16);
    if (i < 5)
      result += ':';
  }
  return result;
}

void tick()
{
  int state = digitalRead(LEDPIN);  // get the current state of GPIO1 pin
  digitalWrite(LEDPIN, !state);     // set pin to the opposite state
}

void setup() 
{
  EEPROM.begin(512);
  
  pinMode(PAIRING_PIN, INPUT_PULLUP);

#ifdef DEBUG
  Serial.begin(9600); Serial.println();
#endif

  if(digitalRead(PAIRING_PIN) == false)
  {
#ifdef DEBUG
  Serial.println("PairingEnabled");

  Serial.print("MAC: ");
  Serial.println(WiFi.macAddress());  
#endif

    pinMode(LEDPIN, OUTPUT);
    ticker.attach(1.0, tick);    

    uint8_t xmac[6];
    WiFi.macAddress(xmac);
    String deviceName = macToStr(xmac);
    deviceName.replace(":", "");
    deviceName.toUpperCase();

    // listen on ESPNow SensorGateway to pair with them
    esp_now_init();
    esp_now_set_self_role(ESP_NOW_ROLE_COMBO);
    esp_now_add_peer(&broadcastMac[0], ESP_NOW_ROLE_SLAVE, 1, NULL, 0);
    esp_now_register_recv_cb([](uint8_t *mac, uint8_t *data, uint8_t len) 
    {
      char payload[20];
      memcpy(payload, data, len);
      String pl(payload);

      if(pl == "PAIRWITHME")
      {
        Serial.println("Gateway Address is "+macToStr(mac));
        writeGatewayAddressToEEPROM(mac);
      }

      delay(100);
      ESP.restart();
    });       

 //   ticker.detach();
 //   ticker.attach(1.0, tick);

    PairingEnabled = true;    
  }
  else
  {
#ifdef SENSORPOWER_SUPPORT
  pinMode(SENSORPOWERPIN,OUTPUT);
  digitalWrite(SENSORPOWERPIN,HIGH);
  #ifdef DEBUG
      Serial.println("SENSORPOWER Support enabled on port "+String(SENSORPOWERPIN));
  #endif    
#endif

    SensorDataExchange sde;
    
#ifdef DHT22_SUPPORT
  dht.setup(DHTPIN, DHTesp::DHT22);    
  readDHT22(&sde);
#endif
    
    esp_now_init();

    readGatewayAddressFromEEPROM();
    esp_now_set_self_role(ESP_NOW_ROLE_CONTROLLER);
    esp_now_add_peer(gatewayMac, ESP_NOW_ROLE_SLAVE, 1, key, 16);
    esp_now_set_peer_key(gatewayMac, key, 16);
    esp_now_register_send_cb([](uint8_t* mac, uint8_t sendStatus) 
    {//this is the function that is called to send data
      Serial.printf("send_cb, send done, status = %i\n", sendStatus);
 //     callbackCalled = true;
    });


    for (int i = 0; i < sde.GetCount(); i++) 
    {
      String m = sde.GetMessage(i);

      uint8_t bs[m.length()];
      memcpy(bs, m.c_str(), sizeof(bs));
      
      esp_now_send(gatewayMac, bs, sizeof(bs)); 
    }
  }
}

void loop() 
{ 
  if(PairingEnabled)
    return;
  if (callbackCalled || (millis() > SEND_TIMEOUT)) 
  {
    gotoSleep();
  }  
}

void readDHT22(SensorDataExchange *sde)
{ 
#ifdef DHT22_SUPPORT
  delay(dht.getMinimumSamplingPeriod());

  sde->AddSensorData("temperature", String(dht.getTemperature()));
  sde->AddSensorData("humidity", String(dht.getHumidity()));
#endif
}

void gotoSleep() 
{  
  int sleepSecs = SLEEP_SECS; 
#ifdef DEBUG
  Serial.printf("Up for %i ms, going to sleep for %i secs...\n", millis(), sleepSecs); 
#endif

#ifdef ATTINY_SUPPORT
  digitalWrite(ATTINYPIN, HIGH);
  #ifdef DEBUG
      Serial.println("Port "+String(ATTINYPIN)+" set to HIGH");
  #endif    
  //delay(1000);
  digitalWrite(ATTINYPIN, LOW);
  //pinMode(ATTINYPIN, INPUT);
#endif

  ESP.deepSleep(sleepSecs * 1000000, RF_NO_CAL);
  delay(100);
}
