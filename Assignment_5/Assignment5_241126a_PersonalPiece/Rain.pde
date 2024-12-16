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
    boolean offBottom,offLeft;
  
    offBottom=(pos.y>height/1.5);
    offLeft=(pos.x<0);
  
   
    if (offBottom){
      teleport();
    }
    if (offLeft){
      pos.x=width;
    }
  
    pos.add(heading.fromAngle(1.75));
    }
    
    void teleport(){
      pos.x = random(width);
      pos.y=50;
    } 
}
