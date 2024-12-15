class Night{
  //PROPERTIES
  PVector pos;
  PVector heading;
  float size;
  float ang1,angle1;
  //CONSTRUCTORS
  Night (float x, float y, float s){
    pos = new PVector (x,y);
    heading=PVector.fromAngle(0.0).mult(0.05);
    size = s;
  }
  //METHODS
  void display(){
    resetMatrix();
    //background
    background (80);
    fill(#2D8647);
    noStroke();
    rect(0,height-150, width, height);
    
    
    //sun 
    ang1=radians(angle1);
    angle1 += 2;
    pos.y= (pos.y+sin(ang1));
    fill(255);//white
    circle(pos.x-100,pos.y-height,size);
  }
  void update(){
    boolean offTop=(pos.y<100);
    if (offTop){
      pos.y=100;
      float pulse = sin(0.025);
      size=size*pulse;
    }
  pos.add(heading.fromAngle(0.0).mult(-0.25));
  }
  void meteors(){
    resetMatrix();
    noStroke();
    translate (pos.x, pos.y);
    circle(10,-3,50);
    fill(255);  
  }

}
