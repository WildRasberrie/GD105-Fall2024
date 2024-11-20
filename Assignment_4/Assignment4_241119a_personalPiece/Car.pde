class Car{
  PVector position;
  float speed;
  PVector heading;
  
  //CONSTRUCTORS
  Car(float x, float y){
    position=new PVector(x,y);
    speed=0;
    heading=PVector.fromAngle(0.0);
  }
  void display(){
  translate(position.x,position.y);
  rotate(heading.heading());
  circle(50,height/2,50);
  }
  void update(){
    if (keyPressed && key=='d'){
      rotate(-TAU/360.0);
    }
    if (keyPressed && key=='a'){
      rotate(+TAU/360.0);
    }
    if (keyPressed && key =='w'){
     accelerate();
    }
    if(keyPressed && key == 's'){
      brake();
    }
  }
    void turn(float turnAmt){
      heading.rotate(turnAmt);
    }
    void accelerate(float accelAmt){
      speed=min(speed+1,10);
    }
    void brake(){
      speed*=0.95;
    }
  }
