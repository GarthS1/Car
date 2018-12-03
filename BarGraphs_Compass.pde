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
