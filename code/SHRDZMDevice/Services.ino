
// check paiting button for more than 3 and less than 10 seconds aafter device is at least 5 seconds up
bool checkAPModeRequest()
{
  currentUptime = millis();
  if( currentUptime < 5000 )
    return false;

  if(digitalRead(atoi(configuration.get("pairingpin")))) // pairing pin released
  {
    if(!configurationAPWaiting)
    {
      configurationAPWaiting = true;
      DV(configurationAPWaiting);
      return false;
    }
    
    if((configurationAPWaitStartTime > 0) && 
       (currentUptime > (configurationAPWaitStartTime + 3000)) &&
       (currentUptime < (configurationAPWaitStartTime + 10000)))
    {
      DLN("Configuration AP trigger detected...");
      configurationAPWaitStartTime = 0;
      return true; 
    }
    else if((configurationAPWaitStartTime > 0) && 
       (currentUptime > (configurationAPWaitStartTime + 10000)))
    {
      DLN("Factory reset trigger detected...");
      configurationAPWaitStartTime = 0;

#ifdef LITTLEFS
      LittleFS.format();
#else
      SPIFFS.format();
#endif

      delay(1000);
      
      ESP.restart();        
      
      return false; 
    }    

    configurationAPWaitStartTime = 0;
    
    return false;
  }
  else if(configurationAPWaitStartTime == 0 && configurationAPWaiting)
  {
    configurationAPWaitStartTime = currentUptime;
    DV(configurationAPWaitStartTime);
  }

  return false;
}
