class Clouds {
  PVector heading, pos;
  float size, speed, radius;
  float angle1,ang1;

  Clouds(float x, float y, float s) {
    pos= new PVector (x, y);
    heading = new PVector (0.25, 0);
    size=s;
    speed=0.0;
    radius=size;
  }
  //METHODS
  void display () {
    resetMatrix();
    //Rain
    fill(188);
    strokeWeight(10);
    stroke(140);
    translate(pos.x, pos.y);
    ellipse (-33, -60, 200, size);
    triangle(pos.x,pos.y,pos.x+12,pos.y+85,pos.x+103,pos.y+height/2.1);
    triangle(pos.x,pos.y,pos.x+-116,pos.y-106,pos.x+50,pos.y+0); 
  }

  void update() {
    boolean offL;
    offL=pos.x<-20;


    if (offL) {
      teleport();
    }
    pos.add(heading.fromAngle(0.0).mult(-0.25));
  }


  void teleport() {
    pos.x=(width);
  }
 void lightning() {
    //lightning
    stroke(#EDF516);
    strokeWeight(10);
    boolean onRightside,onLeftside;
    onRightside = (pos.x>width/2.0);
    onLeftside = (pos.x<width/2.0);
    if(onLeftside){
      fill(#EDF516);
      triangle(pos.x,pos.y,pos.x-80,pos.y-100,pos.x,pos.y+height/2.0);
      triangle(pos.x,pos.y,pos.x+49,pos.y-10,pos.x+44,pos.y+61);
    }
    if(onRightside){
      fill(#EDF516);
      triangle(pos.x,pos.y,pos.x+12,pos.y+85,pos.x+103,pos.y+height/2.1);
      triangle(pos.x,pos.y,pos.x-116,pos.y-106,pos.x+50,pos.y+52); 
      println(pos.x+50);
    }
  }
  void evilCloud() {
    resetMatrix();
    translate(pos.x, pos.y);
    fill(137);
    stroke(100);
    ellipse (0, -14, 196, size);
    
    if (timer[0].isFinished()){
      ang1=radians(angle1);
      angle1 += 2;
      pos.x= (pos.x+cos(ang1));
      
    }else{
      pos.x=pos.x;
  }
 }
}
