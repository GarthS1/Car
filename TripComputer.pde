// class stores current RPM and gear ratio
// also stores the current travelled distance 
class TripComputer 
{
  float RPM;
  float gearRatio;
  float totalTravelledDistance;
  float radius;
  
  TripComputer ()
  {
    RPM =0;
    gearRatio = 0;
    totalTravelledDistance = 0;
    radius = 0;
  }
  TripComputer (float r, float gr, float t, float ra)
  {
    RPM = r;
    gearRatio = gr;
    totalTravelledDistance = t;
    radius =ra;
  }

  //uses RPM and Ratio to get current vaules then caulates speed  based on raduis 
  float getCurrentSpeed()
  {
    float speed = (RPM/60) * (1/gearRatio) * 2 * PI  * radius; //uses speed formula
    return (speed*3.6); //returns speed converts to kilometer automatically.
  }
  
  // a is the counter to update total distance and adds the speed requires radius
  void updateTotalDistance ()
  {
    totalTravelledDistance +=(getCurrentSpeed()/3600); //adds speed to counter   
  }
}
    
