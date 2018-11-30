SensorDataProvider data = new SensorDataProvider();
Car car = new Car ();
Gauge fuelLevel= new Gauge();
Gauge speed = new Gauge();
Gauge RPM = new Gauge();

void setup()   
{
  frameRate(60);
  fullScreen();
  String fp = "car_status_BMW_323i.csv";
  data.filePath = fp;
  data.Initalize();
  car.computer.radius= data.radius;
}

void draw()
{
  data.readNext();
  car.processInput(data.readRPM(), data.readRatio(), data.readFuelLevel(), data.readX(), data.readY());
  fuelLevel.currentVaule = data.readFuelLevel();
  speed.currentVaule = car.computer.getCurrentSpeed();
  RPM.currentVaule = data.readRPM();
  display(nfc(fuelLevel.currentVaule,1), nfc(RPM.currentVaule,1), nfc(speed.currentVaule,1), nfc(car.fuel.fuelEconomy, 2));
}

//mincar 60L
//truck 80L
