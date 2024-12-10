class Clouds{
PVector heading, pos;
float size, speed,radius;

Clouds(float x,float y, float s){
  pos= new PVector (x,y);
  heading = new PVector (0.25,0);
  size=s;
  speed=0.0;
  radius=size;
}
//METHODS
void display (){
  resetMatrix();
  //Rain
  fill(188);
  stroke(140);
  translate(pos.x,pos.y);
  ellipse (-33,-60,200,size);
}

void update(){
  boolean offL;
  offL=pos.x<-20;
  

  if(offL){
    teleport();
  } 
  pos.add(heading.fromAngle(0.0).mult(-0.5));
  }

  
  void teleport(){
    pos.x=(width);
  } 
  
  void evilCloud(){
    resetMatrix();
    translate(pos.x,pos.y);
    //lightning
    fill(#DDE345);
    stroke(#DDE345);
    if (pos.x<width/2.0){
      triangle(pos.x,pos.y,149,160,pos.x,height/2.0);
      triangle(pos.x,pos.y,49,-10,44,61);
    }
    if (pos.x>width/2.0){
      triangle(pos.x,pos.y,321,200,pos.x,height/2.0);
      triangle(pos.x,pos.y,19,-3,118,75);      
    }
    fill(137);
    stroke(100);
    ellipse (100,-8,200,size);

  }
}
