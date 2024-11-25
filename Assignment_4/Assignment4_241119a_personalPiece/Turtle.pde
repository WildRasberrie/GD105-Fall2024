color[] palette ={#0A0A09,#2B3950,#364867};
class Turtle{

//Properties
  PVector pos;
  PVector heading;
  
  //Constructors
  Turtle(float x,float y){
    pos = new PVector(x,y);
    heading = new PVector(1,0); //going right
  }
  //Methods
  void turn(int turnAmt){
    heading.rotate(radians(turnAmt));
  
  }
  void forward(float amount){
    PVector oldPos=pos.copy();
    pos.add(PVector.mult(heading,amount));
    strokeWeight(5);
    stroke(palette[int(random(0,3))]);
    line(oldPos.x,oldPos.y,pos.x,pos.y);
  }
  
  void teleport (float x,float y){
    pos.set(x,y);
  }
  void teleport (){
    pos.set(random(width),random(height));
  }
}
