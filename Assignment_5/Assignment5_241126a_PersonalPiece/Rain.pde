class Rain{
PVector heading, pos;
float size, speed,radius;

Rain(float x,float y, float s){
  pos= new PVector (x,y);
  heading = PVector.random2D().mult(1);
  size=s;
  speed=0.0;
  radius=size;
}
//METHODS
void display (){
  resetMatrix();
  //Rain
  fill(180);
  stroke(#5155B2);
  translate(pos.x,pos.y);
  line (20,0,25,size);
}

void update(){
  boolean offBottom;

  offBottom=(pos.y>height/1.5);

 
  if (offBottom){
    teleport();
  }

  pos.add(heading.fromAngle(1.75));
  }
  
  void teleport(){
    pos.y=50;
  } 
}
