//DECLARE CLASS & PROPERTIES
class Turtle{
  PVector pos,heading;
  color randomColor; 
  
  //CONSTRUCTORS
  Turtle(float x,float y){
    pos=new PVector(x,y);
    heading=new PVector(1,0);
    randomColor=int(random(color(204,153,255)));
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

class FlyingTurtle extends Turtle {
  FlyingTurtle(float x,float y){
    super(x,y);
  }
  void update(){
  boolean isFlying=(pos.x>width||pos.x<0||pos.y>height||pos.y<0);
  if (isFlying){
    line(0,0,0,0);
  }
 }
  void display(){
    strokeWeight(1);
    stroke(randomColor);
    line(pos.x, pos.y, 165, 0);
  }
}
