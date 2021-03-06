// stores the location of file based on user input
// Table dataTablessociated with user input 
// the row number of table
class SensorDataProvider 
{
  String filePath;
  Table dataTable;
  int currentIndex; //counter
  float radius; //always need radius and is tied to table 
  float tank; //always need tank capicity and is tied to table
  boolean start; //varaible to read start screen  
  
  SensorDataProvider ()
  {
    filePath = " " ;
    dataTable = new Table ();
    currentIndex = 0;
    radius = 0;
    tank =0;
    start =true;
  }
  
  SensorDataProvider(String s, Table a, int i, float r, float t, boolean rt)
  {
    filePath = s;
    dataTable = a; 
    currentIndex = i;
    radius = r;
    tank = t;
    start = rt;
  }
  
  // based on user input loads the correct Table dataTablend returns it
  void Initalize()
  {
    if(filePath.equals("car_status_BMW_323i.csv")==true)
    {
      dataTable= loadTable("car_status_BMW_323i.csv","header");
      radius = 0.23;
      tank = 60; 
    }
    else if(filePath.equals("car_status_Truck_F150.csv")==true)
    {
      dataTable = loadTable("car_status_Truck_F150.csv","header");
      radius = 0.254;
      tank =80;
    }
  }
  
  // increases the current index by one if not over row count 
  void readNext()
  {
    if(currentIndex==(dataTable.getRowCount()-1))// if index is above rowcount reset all variables  
    { 
     filePath = " ";
     dataTable = new Table ();
     currentIndex = 0;
     radius = 0;
     tank =0;
     start = true;
    }
    else
    {
      currentIndex++;
    }    
  }
  
  //reads the RPM of the current row 
  float readRPM()
  {
    return dataTable.getFloat(currentIndex, "RPM");
  }
  
  //reads the fuel level of the current row
  float readFuelLevel()
  {
    return dataTable.getFloat(currentIndex, "Fuel Level (liter)");
  }
  
  //reads the ratio of the current row 
  float readRatio()
  {
    return dataTable.getFloat(currentIndex, "Gear Ratio");
  }
  
  //reads the x postion of the current row 
  float readX() //latitude
  {
    return dataTable.getFloat(currentIndex, "X");
  }
  
  //reads the y postion of the current row 
  float readY() //longitude 
  {
    return dataTable.getFloat(currentIndex, "Y");
  }    
}
