class Cows{
  PVector pos,heading;
  float size;
  
  //CONSTRUCTORS
  Cows(float x,float y,float s){
    pos=new PVector(x,y);
    heading=new PVector(1,0);
    size=s;
  }
 
  //METHODS
  void display (){
    PVector oldPos=pos.copy();//copies current pos and sets that to OldPos
    pos.add(PVector.mult(heading,5));
      //DRAW CIRCLE
    circle(oldPos.x,(height-100),size);
  }
}
