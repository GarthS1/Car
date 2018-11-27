// stores the location of file based on user input
// Table dataTablessociated with user input 
// the row number of table
class SensorDataProvider 
{
  String filePath;
  Table dataTable;
  int currentIndex;
  float radius; //always need raduis and is tied to table 
  
  SensorDataProvider ()
  {
    filePath = " " ;
    dataTable = new Table ();
    currentIndex = 0;
    radius = 0;
  }
  
  SensorDataProvider(String s, Table a, int i, float r)
  {
    filePath = s;
    dataTable = a; 
    currentIndex = i;
    radius =r;
  }
  
  // based on user input loads the correct Table dataTablend returns it
  void Initalize()
  {
    if(filePath.equals("car_status_BMW_323i.csv")==true)
    {
      dataTable= loadTable("car_status_BMW_323i.csv","header");
    }
    else if(filePath.equals("car_status_Truck_F150.csv")==true)
    {
      dataTable = loadTable("car_status_Truck_F150.csv","header");
    }
  }
  
  //simlar process for raduis 
  void Initalize1()
  {
    if(filePath.equals("car_status_BMW_323i.csv")==true)
    {
      radius = 23;
    }
    else if(filePath.equals("car_status_Truck_F150.csv")==true)
    {
      radius = 25.4;
    }
  }
  // increases the current index by one if not over row count 
  void readNext()
  {
    if(currentIndex==(dataTable.getRowCount()-1))// if index is above rowcount do nothing  
    {      
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
  float readX()
  {
    return dataTable.getFloat(currentIndex, "X");
  }
  
  //reads the y postion of the current row 
  float readY()
  {
    return dataTable.getFloat(currentIndex, "Y");
  }    
}
