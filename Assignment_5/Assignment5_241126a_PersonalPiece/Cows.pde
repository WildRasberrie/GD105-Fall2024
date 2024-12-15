class Cows {
  PVector pos, heading;
  float size, speed, rot;
  int count;

  //CONSTRUCTORS
  Cows(float x, float y, float s) {
    pos=new PVector(x, y);
    heading=PVector.fromAngle(0.0).mult(0.05);
    size=s;
    speed=0.0;
    rot=0.0;
  }

  //METHODS
  void display () {
    /**************************
     DRAW COWS
    /**************************/

    //Cow Body
    resetMatrix();
    translate (pos.x, pos.y);
    stroke(#050505);
    scale(size);
    rotate(rot);
    //cow body
    fill(#efeff6);
    ellipse(-20, 89, -4+12, -8+68);
    ellipse(34, 86, 0+8, -8+68);
    ellipse(0, 59, 0+105, -8+70);
    ellipse(-59, 59, -38+105, -8+86);


    //nose & eyes
    fill(#c977d5);
    ellipse(-60, 84, 0+63, -8+55);

    fill(0);
    ellipse(-50, 85, 5, 8);
    ellipse(-70, 85, 5, 8);
    ellipse(-50, 46, 5, 8);
    ellipse(-70, 46, 5, 8);
    //spots
    ellipse(-22, 41, 19, 16);
    ellipse(-15, 47, 21, 11);
    ellipse(37, 51, -21, 12);
    ellipse(34, 60, 23, 12);
    ellipse(0, 72, -21, 12);
    ellipse(-5, 80, 23, 12);

    //cow ears
    fill(#efeff6);
    ellipse(-31, 45, -46+59, -8+43);
  }

  void update() {

    if (pos.x<25) {
      teleport();
      println("you did it!");
    }
    boolean cowBeamed=pos.x<car.pos.x+50&&pos.x>car.pos.x-50&&key==ENTER;
    if (cowBeamed) {
      pos.y-=3;
      rot+=(TAU/180.0);
    } else {
      if (pos.y<height-160) {
        pos.y+=3;
        pos.x+=2;
        rot-=(TAU/180.0);
      }
      if (rot<0.0) {
        rot=0.0;
      }
    }
    boolean atSpaceShip=(pos.y<=car.pos.y+100);
    if (atSpaceShip) {
      size--;
      size=0.0;
      pos.x=10000;
      healthBar.addHealth();
      healthBar.count();
    }

    pos.add(heading.fromAngle(0.0).mult(-1.0));
  }

  void teleport() {
    pos.x=(width+20);
  }
}
