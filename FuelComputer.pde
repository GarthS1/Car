// stores current fuel economy, current fuel consumed, historical fuel economy and range of car 
class FuelComputer
{
  float fuelEconomy;
  float fuelConsumption;
  float fuelEconomyHistory;
  float range;
  
  float distance;
  int counter;
  int index;
  float lastFuelLevel; 
  float fuelLevel;
  float [] fuel;
  
  FuelComputer()
  {
    fuelEconomy = 0;
    fuelConsumption = 0;
    fuelEconomyHistory = 0;
    range = 0;
    distance = 0;
    counter = 0;
    index = 0;
    lastFuelLevel = 0;
    fuelLevel = 0;
    fuel = new float [60];
  }
  
  FuelComputer(float a, float b, float c, float d, float e, int f, int i, float g, float h)
  {
    fuelEconomy = a;
    fuelConsumption = b;
    fuelEconomyHistory = c;
    range = d;
    distance = e;
    counter = f;
    index = i;
    lastFuelLevel = g;
    fuelLevel = h;
  }
  
 //caulates fuel econmoy based on distance and consumed fuel
  void calculateFuelEconomy()
  {
    fuelEconomy = ((distance)/(lastFuelLevel-fuelLevel)); // uses fuel economy formula
    lastFuelLevel = fuelLevel;

    fuel [index] = fuelEconomy;
    lastFuelLevel = fuelLevel;
    if(index==59)
    {
      counter = 0;
    }
    else
    {
      index++;
    }
    if(counter!=61)
    {
      counter++;
    }
  }
     
  void calculateAverageFuelEconomy()
  {
   int i =0;
   int j =0;
    for (; i<=counter; i++) 
   {
     j += fuel[i];
    }
  fuelEconomyHistory = (j/i);
  }
  
  void calculateRange()
  {
    range = (fuelEconomyHistory * fuelLevel);
  }
  
  void calculateFuelConsumption()
  {
    fuelConsumption = (1/fuelEconomyHistory)*100;
  }    
}
  
