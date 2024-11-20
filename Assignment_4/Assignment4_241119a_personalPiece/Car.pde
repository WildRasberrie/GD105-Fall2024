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
  triangle(100,height/6.5,width/6.5,height/6.5,width/6.5,100);
  }
 
  //turning with A & D
  void update(){
      
  if (position.x>width||position.x<-50){
    //x-axis collision
    position.x*=1;
  }
  if(position.y>height||position.y<-50){
    position.y*=-1;  
  }
    if (keyPressed && key=='d'){
      turn(-TAU/360.0);
    }
    if (keyPressed && key=='a'){
      turn(+TAU/360.0);
    }
    //accelerate & brake 
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
      speed=max(speed-1.0,0);
    }
  }
