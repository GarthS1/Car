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
}
