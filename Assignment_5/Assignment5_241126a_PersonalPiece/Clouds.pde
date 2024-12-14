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
  void evilCloud() {
    resetMatrix();
    translate(pos.x, pos.y);
    if (timer[0].isFinished()){
      ang1=radians(angle1);
      angle1 += 2;
      pos.x= (pos.x+cos(ang1));
      stroke(#EDF516);
      strokeWeight(10);
      fill(#EDF516);
      boolean onLside=(0<pos.x&&pos.x<width/3.4);
      boolean onRside=(pos.x>width/3.3||pos.x>width);
      if (onLside){
        triangle(pos.x+27,pos.y-51,pos.x+-35,pos.y-137,pos.x-2,pos.y+height/40.4);
        triangle(pos.x,pos.y,pos.x-13,pos.y+213,pos.x+24,pos.y+61);
      }
      if (onRside){
        triangle(pos.x-169,pos.y-51,pos.x-272,pos.y-119,pos.x-153,pos.y+height/40.4);
        triangle(pos.x-145,pos.y,pos.x-115,pos.y+213,pos.x-97,pos.y+61);
      }else{
        pos.x=pos.x;
  }
    fill(137);
    stroke(100);
    ellipse (70, -14, 266, size);
   }    
 }
}
