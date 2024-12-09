class Obstacles{
  PVector position, heading;
  float size,speed;
  
  Obstacles(float x,float y, float s){
    position= new PVector(x,y);
    heading = PVector.random2D().mult(int(random(10,15)));   
    size = s;
    speed+=0.5;
  }
  //METHODS
  void display(){
    resetMatrix();
    pushMatrix();
    translate(position.x,position.y);
   
    fill(#ff0000);
    circle(0,0,size);
    popMatrix();
  }
  void update(){
    
    //Boarder control
    boolean offREdge,offLEdge,offTop,offBottom;
    offREdge = (position.x>width-50);
    offLEdge = (position.x<50);
    offTop = (position.y<50);
    offBottom =(position.y>(height)-50);
    
    if(offREdge){
      position.x*=-1;
    }
    if (offLEdge){
      position.x*=1;
    }
    if(offTop){
      position.y*=1;
    }
    if(offBottom){
      position.y*=-1;
    }
   position.add(heading.random2D().mult(heading,speed)); 
  }
}
