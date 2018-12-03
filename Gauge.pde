// stores the max and min of a parameter as well as the current vaule and refrence
class Gauge
{
  float minimum;
  float maximum;
  float currentVaule;
  String word;
   
  Gauge()
  {
    minimum = 0;
    maximum = 0;
    currentVaule = 0;
    word = " ";
  }
  
  Gauge (float a, float b, float c , String d)
  {
    minimum = a;
    maximum = b;
    //makes sure vaules falls inbewteen max and min
    if(minimum<=c&&c<=maximum)
    {
      currentVaule = c;
    }
    word = d;
  }
}

// function displays the vaules 
void display(String fuelLevel, String RPM, String speed, String fuelEconomy, String totalDistance, String range, String fuelConsumpation)
{
  //asssigns a font
  PFont font1; 
  font1 = loadFont("DialogInput.bolditalic-48.vlw");
  
  //loasds image from folder
  PImage dashboard;
  dashboard = loadImage("dashboard-Recovered.jpg");
  image(dashboard, 0,0);  
  textFont(font1, 100);
  
  textSize(70); 
  fill(255, 211, 56);
  text(fuelLevel, 1530, 600); 
  
  textSize(50); 
  fill(255, 211, 56);
  text(RPM, 900, 200); 
  
  textSize(150); 
  fill(255, 211, 56);
  text(speed, 800, 650); 
  
  textSize(25);
  fill(255, 211, 56);
  text(fuelEconomy, 940, 1050);
  
  textSize(25);
  fill(255, 211, 56);
  text(totalDistance, 940, 973);
  
  textSize(25);
  fill(255, 211, 56);
  text(range, 940, 1010);
  
  textSize(25);
  fill(255, 211, 56);
  text(fuelConsumpation, 940, 935);  
}
