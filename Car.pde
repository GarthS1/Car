// Car stores three different classes 
class Car
{
  TripComputer computer;
  FuelTank tank;
  FuelComputer fuel;
  
  Car()
  {
    computer = new TripComputer();
    tank = new FuelTank();
    fuel = new FuelComputer();
  }
  
  Car(TripComputer a, FuelTank b, FuelComputer c)
  {
    computer = a;
    tank = b;
    fuel = c;
  }
  
  //gives the data to each of the classes inside of car
  void processInput(float RPM, float gearRatio, float fuelLevel, float x, float y)
  {
    computer.RPM = RPM;
    computer.gearRatio = gearRatio;
    tank.fuelLevel = fuelLevel;
    fuel.distance = (computer.getCurrentSpeed()/3600);
    fuel.fuelLevel = fuelLevel;
    fuel.calculateFuelEconomy();
    fuel.calculateRange();
  }    
}
