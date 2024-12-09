  //Properties
class Car{
PVector pos,direction;
float speed; 
  //Constructors
  Car(float x,float y){
    pos= new PVector (x,y);//setting position
    direction= new PVector (1,0);//heading direction on x-axis
    speed=0.0;//setting initial speed at 0
  }
  //Methods
  void display(){
    fill(#C5D65D);
    strokeWeight(3);
    translate(pos.x,pos.y);
    rotate (direction.heading());
    triangle(25,0,-25,0,0,50);   
  }
   
  void update(){
    
    //Boarder control
    boolean offREdge,offLEdge,offTop,halfwayPoint;
    offREdge = (pos.x>width);
    offLEdge = (pos.x<0);
    offTop = (pos.y<0);
    halfwayPoint =(pos.y>height/2);
    
    if(offREdge||offLEdge){
      pos.x*=-1;
    }
    if(offTop||halfwayPoint){
      pos.y*=-1;
    }
    
    //Key controls
    if (key == 'w'||key=='W' || (key==CODED && keyCode ==UP)){
        accelerate();
    }
    if (key == 's'||key=='S' || (key==CODED && keyCode ==DOWN)){
        brake();
    }
    if (key == 'a'||key=='A' || (key==CODED && keyCode ==LEFT)){
      turn(+TAU/360);
    }
    if (key == 'd'||key=='D' || (key==CODED && keyCode ==RIGHT)){
      turn(-TAU/360); 
    }
    //if(key==ENTER){
    //  shoot();
    //}
      pos.add(PVector.mult(direction,speed));
  }
  
  void turn(float turnAmt){
    direction.rotate(turnAmt);
  }
  
  void accelerate(){
    speed=min(speed+1.0,3.0);
  }
  void brake(){
    speed*=0.95;
  }
  
  //void shoot(){
  //  stroke(#ff0000);
  //  strokeWeight(10);
  //  line(pos.x,pos.y,50*2,50*2);
  //}
 //void keyPressed(){
 //  if (key ==CODED){
 //    if(keyCode==UP){
 //      accelerate();
 //    }
 //  }
 //  if (key == CODED){
 //    if (keyCode==DOWN){
 //      brake();
 //    }
 //  }
 //  if(key==CODED){
 //    if(keyCode==LEFT){
 //      turn(+TAU/360);
 //    }
 //  }
 //  if(key==CODED){
 //    if(keyCode==RIGHT){
 //      turn(-TAU/360);
 //    }
 //  }
 // }
}
