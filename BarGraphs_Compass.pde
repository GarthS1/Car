// draw graph
void graph (float []d) 
{
  //defines array to display vaules
  float [] shortened = new float [40] ;
  arrayCopy(d, d.length - 40, shortened, 0, 40); 

  BarChart barChart;
  barChart = new BarChart(this);
  barChart.setData(shortened);

  // Scaling
  barChart.setMinValue(0);
  barChart.setMaxValue(30);

  // Axis appearance
  textFont(createFont("Serif", 5), 10);
  barChart.showValueAxis(true);
  barChart.setValueFormat("#");
  barChart.showCategoryAxis(true);

  // Bar colours and appearance
  barChart.setBarColour(color(250, 100, 20, 200));
  barChart.setBarGap(4);
  barChart.draw(1100, 1060, 500, 180);
}

//display different graph 
void graph2 (float []d) 
{
  //defines array to display vaules
  float [] shortened = new float [40] ;
  arrayCopy(d, d.length - 40, shortened, 0, 40); 

  BarChart barChart;
  barChart = new BarChart(this);
  barChart.setData(shortened);

  // Scaling
  barChart.setMinValue(0);
  barChart.setMaxValue(30);

  // Axis appearance
  textFont(createFont("Serif", 5), 10);
  barChart.showValueAxis(true);
  barChart.setValueFormat("#");
  barChart.showCategoryAxis(true);

  // Bar colours and appearance
  barChart.setBarColour(color(250, 100, 20, 200));
  barChart.setBarGap(4);
  barChart.draw(400, 1060, 500, 180);
}

// Compass class to store pastX, pastY and direction
class Compass
{
  float pastX;
  float pastY;
  String direction;
  
  Compass()
  {
    pastX = 0;
    pastY = 0;
    direction = " ";
  }
  
  Compass(float a, float b, String c)
  {
    pastX = a;
    pastY = b;
    direction = c;
  }
  
  // caculates the direction
  void direction ( float x, float y)
  {
    // finds the change in x and y postions 
    float changeX = pastX - x;
    float changeY = pastY - y;
    pastX = x; // defines pastX as x
    pastY = y; // defines pastY as y
    direction = " "; //resets direction to blank string  
    
    //seires of if statments to detect if Car is going north, south, east or west
    if(0>changeX)
    { 
      direction +=  'N';
    }
    else
    {
      direction +=  'S';
    }
    if(0>changeY)
    {
      direction +=  'E';
    }
    else
    {
      direction +=  'W';
    }
  }
  
  // member function which displays compass 
  void display()
  {  
    textSize(100); 
    fill(255, 211, 56);
    text(direction, 250  , 500);
  }
}
