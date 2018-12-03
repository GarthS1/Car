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
    counter = 1;
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
    float c = ((distance)/(abs(lastFuelLevel-fuelLevel))); // uses fuel economy formula
    //checks to make sure vaule is okay 
    if(0<c&&c<30)
    {
      fuelEconomy =c;
    }
    lastFuelLevel = fuelLevel; //assigns current fuel level to past for future use
    fuel[index] = fuelEconomy; //assigns fuelEconomy to an array to caulate average 
    //resets the index if at max otherwise increase by one
    if(index==59)
    {
      index = 0;
    }
    else
    {
      index++;
    }
    // uses the counter for the first 60 seconds to get proper average fuel economy
    if(counter==60)
    {
    }
    else
    {
      counter++;
    }  
  }
 
  //caculates the average fuel economy   
  void calculateAverageFuelEconomy()
  {
    float j =0;// a temp vaule for the total vaule of the array 
    //caculates the current total vaule by adding to temp vaule
    for (int i =0; i<counter; i++) 
    {
        j += fuel[i];    
    }
    fuelEconomyHistory = (j/counter); //caculates average by diving total vaule by the counter
  }
  
  //caulates the range using the range formula
  void calculateRange()
  {
    range = (fuelEconomyHistory * fuelLevel);
  }
  
  //caculates the fuel consumpation using the fuel consumption formula
  void calculateFuelConsumption()
  {
    fuelConsumption = (1/fuelEconomyHistory)*100;
  }    
}
  
