class Sunny{
  //PROPERTIES
  PVector pos;
  PVector heading;
  float size;
  float ang1,angle1;
  //CONSTRUCTORS
  Sunny (float x, float y, float s){
    pos = new PVector (x,y);
    heading=PVector.fromAngle(0.0).mult(0.05);
    size = s;
  }
  //METHODS
  void display(){
    resetMatrix();
    //background
    background (#35B8DB);
    fill(#2D8647);
    noStroke();
    rect(0,height-150, width, height);
    
    
    //sun 
    ang1=radians(angle1);
    angle1 += 2;
    pos.y= (pos.y+sin(ang1));
    fill(#FFFF71);//yellow
    circle(pos.x-100,pos.y-height,size);
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
    resetMatrix();
    noStroke();
    translate (pos.x, pos.y);
   //birds body
    fill(#6C6969);
    ellipse(0,0,-17,50);
    ellipse(0,0,7,50-14);
    
    //bird head
    circle(10,-3,50);
    fill(255);
    ellipse(11,-4,2,50-6);
    fill(0);
    circle(11,-3,50-9);
    fill(#FFBE0A);
    triangle(15,-3,13,1,18,50-10);
   
  }

}
