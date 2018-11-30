//not finished
// stores the max and min of a parameter as well as the current vaule and units
class Gauge
{
  float minimum;
  float maximum;
  float currentVaule;
  String units;
  
  
  Gauge()
  {
    minimum = 0;
    maximum = 0;
    currentVaule = 0;
    units = " ";
  }
  
  Gauge (float a, float b, float c , String d)
  {
    minimum = a;
    maximum = b;
    currentVaule = c;
    units = d;
  }
}

void display(String fuelLevel, String RPM, String speed, String fuelEconomy)
{
  PFont font1; 
  font1 = loadFont("DialogInput.bolditalic-48.vlw");
  
  PImage dashboard;
  dashboard = loadImage("dashboard-Recovered.jpg");
  image(dashboard, 0,0);  
  textFont(font1, 100);
  
  textSize(50); 
  fill(255, 211, 56);
  text(fuelLevel, 1510, 600); 
  
  textSize(50); 
  fill(255, 211, 56);
  text(RPM, 950, 200); 
  
  textSize(150); 
  fill(255, 211, 56);
  text(speed, 820, 600); 
  
  textSize(50);
  fill(255, 211, 56);
  text(fuelEconomy, 820, 1000);
}
