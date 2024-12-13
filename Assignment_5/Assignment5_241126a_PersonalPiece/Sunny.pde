class Sunny{
  //PROPERTIES
  PVector pos;
  float size,heading;
  //CONSTRUCTORS
  Sunny (float x, float y, float s){
    pos = new PVector (x,y);
    heading = (sin(0.05));
    size = s;
  }
  //METHODS
  void display(){
    //background
    background (#35B8DB);
    fill(#2D8647);
    noStroke();
    rect(-300,height-150, width, height);
    
    
    //sun 
    fill(#FFFF71);//yellow
    circle(pos.x,pos.y*heading,size);
  }
  void update(){
    boolean offTop=(pos.y<100);
    if (offTop){
      pos.y=100;
      float pulse = sin(0.025);
      size=size*pulse;
    }
  }
  void birds(){
    
  }

}
