// class stores total fuel capicity and current fuel level 
class FuelTank 
{
  float tankCapacity;
  float fuelLevel;
  
  FuelTank()
  {
    tankCapacity =0;
    fuelLevel = 0;
  }
  
  FuelTank(float tC, float fL)
  {
    tankCapacity =tC;
    fuelLevel = fL;
  }
  
  float getCosnsumedFuel()
  {
    return (tankCapacity - fuelLevel); // consumed fuel formula  
  }
}
