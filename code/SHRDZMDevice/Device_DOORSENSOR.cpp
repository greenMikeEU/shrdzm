#include "Device_DOORSENSOR.h"

struct rst_info {
  uint32 reason;
  uint32 exccause;
  uint32 epc1;
  uint32 epc2;
  uint32 epc3;
  uint32 excvaddr;
  uint32 depc;
};      

Device_DOORSENSOR::Device_DOORSENSOR()
{  
  dataAvailable = false;  
  deviceTypeName = "DOORSENSOR";
}

Device_DOORSENSOR::~Device_DOORSENSOR()
{
  Serial.println("DOORSENSOR Instance deleted");
}

bool Device_DOORSENSOR::setDeviceParameter(JsonObject obj)
{
  DeviceBase::setDeviceParameter(obj);

  if(deviceParameter.containsKey("pin"))
  {
    if(deviceParameter["pin"].as<uint8_t>() != 99)
      pinMode(deviceParameter["pin"].as<uint8_t>(), INPUT_PULLUP);
  }
}

bool Device_DOORSENSOR::initialize()
{
  // create an object
  deviceParameter = doc.to<JsonObject>();
  
  deviceParameter["pin"] = "5";

/*  if (g_configdoc.containsKey("interval"))
  {
    int interval = atoi(g_configdoc["interval"]);

    if(interval < 0)
    {
    }
  }
  */
  return true;
}

SensorData* Device_DOORSENSOR::readParameterTypes()
{
  SensorData *al = new SensorData(1);

  al->di[0].nameI = "state";

  return al;
}

SensorData* Device_DOORSENSOR::readInitialSetupParameter()
{
  SensorData *al = new SensorData(2);

  al->di[0].nameI = "interval";
  al->di[0].valueI = "-1";
  al->di[1].nameI = "preparetime";
  al->di[1].valueI = "0";

  return al;
}

SensorData* Device_DOORSENSOR::readParameter()
{  
  SensorData *al = new SensorData(1);

  if(deviceParameter["pin"].as<uint8_t>() < 16)
  {
    al->di[0].nameI = "state";
    al->di[0].valueI = digitalRead(deviceParameter["pin"].as<uint8_t>()) ? "OPEN" : "CLOSED";
  }
  else
  {
    al->di[0].nameI = "state";
    al->di[0].valueI = "error";
  }

  dataAvailable = false;
  
  return al;
}
