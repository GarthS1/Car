//add commnets 
void graph (float []d) 
{
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
  barChart.draw(50, 50, 500, 180);
}

void graph2 (float []d) 
{
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
  barChart.draw(50, 1000, 500, 180);
}

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
  
  void direction ( float x, float y)
  {
    float changeX = pastX - x;
    float changeY = pastY - y;
    pastX = x;
    pastY = y;
    direction = " ";
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
  
  void display()
  {
    textSize(150); 
    fill(255, 211, 56);
    text(direction, 300, 300);
  }
}
