class Car{
  PVector position,a,b;
  float speed;
  PVector heading;

  
  //CONSTRUCTORS
  Car(float x, float y){
    position=new PVector(x,y);
    speed=0;
    heading=PVector.fromAngle(0.0);
    a=new PVector (114.0,0.0);
    b=new PVector (0.0,100.0);
  }
  
  void display(){
  translate(position.x,position.y);
  rotate(heading.heading());
  triangle(175,100,a.x,b.y,
          123,68);
  }
 

  void update(){  
  if (a.x>width||a.x<-50){
    //x-axis collision
    a.x*=1;
  }
  if(b.y>height||b.y<-50){
    //y-axis collision
    b.y*=-1;  
  }
    //turning with A & D
    if (keyPressed && key=='d'){
      turn(-TAU/360.0);
    }
    if (keyPressed && key=='a'){
      turn(+TAU/360.0);
    }
    //accelerate & brake w. W & S 
    if (keyPressed && key =='w'){
     accelerate();
    }else if(keyPressed && key == 's'){
      brake();
    }
    position.add(PVector.mult(heading,speed));
  }
  
  
    void turn(float turnAmt){
      heading.rotate(turnAmt);
    }
    
    void accelerate(){
      speed=min(speed+1.0,3.0);
    }
    
    void brake(){
      speed=max(speed-1.0,0.0);
    }
  }
