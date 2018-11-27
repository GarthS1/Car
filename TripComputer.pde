// class stores current RPM and gear ratio
// also stores the current travelled distance 
class TripComputer 
{
  float RPM;
  float gearRatio;
  float totalTravelledDistance;
  
  TripComputer ()
  {
    RPM =0;
    gearRatio = 0;
    totalTravelledDistance = 0;
  }
  TripComputer (float r, float gr, float t)
  {
    RPM = r;
    gearRatio = gr;
    totalTravelledDistance = t;
  }

  //uses RPM and Ratio to get current vaules then caulates speed  based on raduis 
  float getCurrentSpeed(float r)
  {
    float speed = (RPM/60) * (1/gearRatio) * 2 * PI  * r; //uses speed formula
    return (speed*3.6); //returns speed 
  }
  
  // a is the counter to update total distance and adds the speed
  void updateTotalDistance (float r)
  {
    totalTravelledDistance +=getCurrentSpeed(r); //adds speed to counter   
  }
}
    
