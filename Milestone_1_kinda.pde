SensorDataProvider Data = new SensorDataProvider();
TripComputer Trip = new TripComputer();
void setup()   
{
  frameRate(1);
  size(2500,25000);
  String fp = "car_status_BMW_323i.csv";
  Data.filePath = fp;
  Data.Initalize();
  Data.Initalize1();
  Data.radius= 0.23; 
  setinterface();
}

void draw()
{
  Data.readNext();  
  fill(255);
  ellipse( 400, 400, 500, 500);
  ellipse( 990, 400, 500, 500);
  ellipse( 1600, 400, 500, 500);
  Trip = new TripComputer(Data.readRPM() , Data.readRatio(), 0) ;
  display(Data.readFuelLevel(), Data.readRPM(), Trip.getCurrentSpeed(Data.radius) );
}
