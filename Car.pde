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
  
  //gives the data to each of the classes inside of car and calls the fucntions to caulate the vaules needed 
  void processInput(float RPM, float gearRatio, float fuelLevel)
  {
    //vaules are assigned inside the classes  
    computer.RPM = RPM;
    computer.gearRatio = gearRatio;
    fuel.fuelLevel = fuelLevel;
    tank.fuelLevel = fuelLevel;

    //functions are called to update vaules
    computer.updateTotalDistance();
    fuel.distance = (computer.getCurrentSpeed()/3600); // divide by 3600 to get kilometers travelled in past second 
    fuel.calculateFuelEconomy();
    fuel.calculateAverageFuelEconomy();
    fuel.calculateRange();
    fuel.calculateFuelConsumption();
  }    
}
