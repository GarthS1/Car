void setup()
{
  SensorDataProvider Data = new SensorDataProvider();
  String fp = "car_status_BMW_323i.csv";
  Data.filePath = fp;
  Data.dataTable = Initalize(Data.dataTable, Data.filePath);
  for( int i =0; i<=Data.dataTable.getRowCount(); i++)
  {
    println(readY(Data.currentIndex,Data.dataTable));
    Data.currentIndex = readNext(Data.currentIndex);
  }
}
