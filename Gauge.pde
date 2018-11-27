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
void setinterface()
{
  int textsize = 50;
  int ypos2 = 800;

  ellipse( 400, 400, 500, 500);
  ellipse( 990, 400, 500, 500);
  ellipse( 1600, 400, 500, 500);
  
  textSize(textsize); 
  fill (0); 
  text("FUEL (LITER)", 350, ypos2); 

  textSize(textsize); 
  fill (0); 
  text("RPM", 940, ypos2); 

  textSize(textsize); 
  fill (0); 
  text("SPEED(KM/H)", 1550, ypos2);
}

void display(float fuelLevel, float RPM, float speed)
{
  int textsize = 50;
  int ypos = 400;
  int ypos2 = 800;
    
  textSize(textsize); 
  fill (0); 
  text(fuelLevel, 350, ypos); 
  
  textSize(textsize); 
  fill (0); 
  text(RPM, 940, ypos); 
  
  textSize(textsize); 
  fill (0); 
  text(speed, 1550, ypos); 
}
