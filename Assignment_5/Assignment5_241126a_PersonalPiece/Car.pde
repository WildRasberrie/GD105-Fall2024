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
    fill(#717361);
    strokeWeight(3);
    translate(pos.x,pos.y);
    rotate (direction.heading());
    arc(0,50,115,50,49,150);   
    fill(#0C4C83);
    arc(0,34,68,41,49,150);
  }
   
  void update(){
    
    //Boarder control
    boolean offREdge,offLEdge,offTop,halfwayPoint;
    offREdge = (pos.x>width-50);
    offLEdge = (pos.x<50);
    offTop = (pos.y<25);
    halfwayPoint =(pos.y>(height/2)-40);
    
    if(offREdge){
      pos.x=width-50;
      brake();
    }
    if(offLEdge){
      pos.x=50;
    }
    if(offTop){
      pos.y=25;    
    }
    if(halfwayPoint){
      pos.y=(height/2)-40;  
    }
    
    //Key controls
    if (key == 'w'||key=='W' || (key==CODED && keyCode ==UP)){
        pos.y-=5;
    }
    if (key == 's'||key=='S' || (key==CODED && keyCode ==DOWN)){
        pos.y+=max(5,0);
      }
     if (key==1){
          brake();
      }
    
    if (key == 'a'||key=='A' || (key==CODED && keyCode ==LEFT)){
      pos.x-=5;
    }
    if (key == 'd'||key=='D' || (key==CODED && keyCode ==RIGHT)){
      pos.x+=5; 
    }
    if(key==ENTER){
      shoot();
    }
      pos.add(PVector.mult(direction,speed));
  }
  
  void turn(float turnAmt){
    direction.rotate(turnAmt);
  }
  
  void accelerate(){
    speed=min(speed+1.0,3.0);
  }
  
  void reverse(){
    speed=min(-1.0,3.0); 
  }
  
  void brake(){
    speed*=0.95;
  }
  
  
  
  void shoot(){
    stroke(#ff0000);
    strokeWeight(10);
    triangle(pos.x,50,pos.y,50,width,height);
  }
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
