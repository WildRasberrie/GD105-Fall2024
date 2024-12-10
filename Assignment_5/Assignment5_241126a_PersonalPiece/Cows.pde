class Cows{
  PVector pos,heading;
  float size,speed;
  color red;
  
  //CONSTRUCTORS
  Cows(float x,float y,float s){
    pos=new PVector(x,y);
    heading=PVector.fromAngle(0.0).mult(2);
    size=s;
    speed=0.0;
    red = color(255,0,0);
  }
 
  //METHODS
  void display (){
      //DRAW CIRCLE
    resetMatrix();
    translate (pos.x,pos.y);
    circle(0,0,size);
  }
  void update(){
    //int red;
    if (red>=color(255,0,0)){
      pos.y-=10;
    }
   
   pos.add(heading.mult(random(0.02)));
  }
}
