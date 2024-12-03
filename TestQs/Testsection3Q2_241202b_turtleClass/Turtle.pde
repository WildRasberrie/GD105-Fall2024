//DECLARE CLASS
class Turtle{
  PVector pos,heading;
  
  //CONSTRUCTORS
  Turtle(float x,float y){
    pos=new PVector(x,y);
    heading=new PVector(1,0);
  }
 
  //METHODS
  void turn(int turnAmt){
    heading.rotate(radians(turnAmt));
  }
  
  void forward (float amt){
    PVector oldPos=pos.copy();//copies current pos and sets that to OldPos
    pos.add(PVector.mult(heading,amt));
      //DRAW LINE
    line(oldPos.x,oldPos.y,pos.x,pos.y);
  }
  
  void teleport(float x, float y){
    pos.set(x,y);
  }
  
  void teleport(){
    pos.set(random(width),random(height));
  }

}
