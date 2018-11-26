class SensorDataProvider 
{
  String filePath;
  Table dataTable;
  int currentIndex;
  
  SensorDataProvider ()
  {
    filePath = " " ;
    dataTable = new Table ();
    currentIndex = 0;
  }
  SensorDataProvider(String s, Table a, int I)
  {
    filePath = s;
    dataTable = a; 
    currentIndex = I;
  }
}

Table Initalize(Table a, String fp)
{
  if(fp.equals("car_status_BMW_323i.csv")==true)
  {
    a= loadTable("car_status_BMW_323i.csv","header");
    return a;
  }
  else if(fp.equals("car_status_Truck_F150.csv")==true)
  {
    a = loadTable("car_status_Truck_F150.csv","header");
    return a;
  }
  else
  {
    return a;
  }
}

int readNext(int n)
{
  if(n==600)
  {
    return n;
  }
  else
  {
    return ++n;
  }
}

float readRPM(int n, Table a)
{
  return a.getFloat(n, "RPM");
}

float FuelLevel(int n, Table a)
{
  return a.getFloat(n, "Fuel Level");
}

float readRatio(int n, Table a)
{
  return a.getFloat(n, "Gear Ratio");
}

float readX(int n, Table a)
{
  return a.getFloat(n, "X");
}

float readY(int n, Table a)
{
  return a.getFloat(n, "Y");
} 
