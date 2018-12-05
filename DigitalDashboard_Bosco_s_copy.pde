//defines class so that they are global variables and can be changed in the functions
//also defines the min, max and the label 
SensorDataProvider data = new SensorDataProvider();
Car car = new Car();
Gauge fuelLevel= new Gauge(0, 100, 0, "fuelLevel");
Gauge speed = new Gauge(0, 200, 0, "speed");
Gauge RPM = new Gauge(0, 2500, 0, "RPM");
Gauge range = new Gauge(0, 10000, 0, "Range");
Gauge fuelConsumpation = new Gauge(0, 10000, 0, "fuelConsumpation");
Gauge fuelEconomy = new Gauge(0, 30, 0, "fuelEconomy");
Gauge odometer = new Gauge(0, 1000000000, 0, "odometer");
Compass direction = new Compass();
PImage menuPage;
int i = 0;

//imports bar graph tool
import org.gicentre.utils.stat.*;

void setup()   
{
  frameRate(60);
  fullScreen();
  menuPage = loadImage("Menu-Page.jpg"); 
}

void draw()
{
  //if no filePath is loaded display the selection screeen
  if(data.start==true)
  {
    if(i==0)
    {
      image(menuPage, 0, -500);
      i++;
    }
    else 
    {
    if (key == '1') // if 1 is pressed loads BMW vaules 
    { 
      data.filePath = "car_status_BMW_323i.csv";
      data.Initalize();
      car.computer.radius= data.radius;
      car.tank.tankCapacity= data.tank;
      data.start = false;
      i =0;
    } 
    else if (key == '2' )//if 2 is pressed load truck vaules
    {
      data.filePath =  "car_status_Truck_F150.csv";
      data.Initalize();  
      car.computer.radius= data.radius;
      car.tank.tankCapacity= data.tank;
      data.start = false;
      i = 0;
    }
    else if (key == '3' )// if 3 is pressed end program  
    {
      exit();
    }
    key = 0;
    }
  }
  //once a filePath is selected run the assigned functions to display the revelant information
  else
  {
    //gives the table inputs to the assigned vaules in the car class
    car.processInput(data.readRPM(), data.readRatio(), data.readFuelLevel());
    
    //assigns the current vaules to the respective gauge 
    fuelLevel.currentVaule = data.readFuelLevel(); 
    speed.currentVaule = car.computer.getCurrentSpeed(); 
    RPM.currentVaule = data.readRPM(); 
    range.currentVaule = car.fuel.range;
    fuelConsumpation.currentVaule = car.fuel.fuelConsumption;
    fuelEconomy.currentVaule = car.fuel.fuelEconomy ;
    odometer.currentVaule = car.computer.totalTravelledDistance ;
    
    //calls the display fucntion which displays the current vaules  
    display(nfc(fuelLevel.currentVaule,1), nfc(RPM.currentVaule,1), nfc(speed.currentVaule,1), nfc(fuelEconomy.currentVaule, 2),nfc(odometer.currentVaule,2),nfc(range.currentVaule,2),nfc(fuelConsumpation.currentVaule,2)); 
    
    //calls fucntion to display graphs 
    //graph(car.fuel.fuelConsumptionA);
    //graph2(car.fuel.fuelEconomyHistoryA);
    
    //calls fucntion to draw compass
    direction.direction(data.readX(), data.readY());
    direction.display();
    
    //calls the read next function which calls the next row of the table or if table has no more rows resets the program 
    data.readNext();
  }
}
