// stores current fuel economy, current fuel consumed, historical fuel economy and range of car 
class FuelComputer
{
  float fuelEconomy;
  float fuelConsumption;
  float fuelEconomyHistory;
  float range;
  
  FuelComputer()
  {
    fuelEconomy = 0;
    fuelConsumption = 0;
    fuelEconomyHistory = 0;
    range = 0;
  }
  
  FuelComputer(float a, float b, float c, float d)
  {
    fuelEconomy = a;
    fuelConsumption = b;
    fuelEconomyHistory = c;
    range = d;
  }

  /*float calculateFuelEconomy(int n, Table t, float r)
  {
    float a = readFuelLevel(n-1, t) - readFuelLevel(n, t);
    return getCurrentSpeed(n, t,r)/a;  
  }
  
  float calculateAverageFuelEconomy(int n, Table t, float r)
  {
    float a = 0;
    for(int i =0; i<=60; i++)
    {
      if(n!=0)
      {
      a += calculateFuelEconomy(n-i,t,r);
      }
      else
      {
        return a/i;
      }
    }
    return a/60;
  }*/
}
  
  
  
  
  
//float calculateRange(
