  //Properties
class Car{
  PVector pos,direction,vel,acc;
  float speed,radius; 

    //Constructors
    Car(float x,float y){
      pos= new PVector (x,y);//setting position
      direction= new PVector (1,0);//heading direction on x-axis
      speed=0.0;//setting initial speed at 0
      radius=50.0;
      vel=PVector.random2D();
      acc=new PVector(0,1);
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
      offTop = (pos.y<100);
      halfwayPoint =(pos.y>(height/2)-40);
      
      if(offREdge){
        pos.x=width-50;
        brake();
      }
      if(offLEdge){
        pos.x=50;
      }
      if(offTop){
        pos.y=100;    
      }
      if(halfwayPoint){
        pos.y=(height/2)-40;  
      }
      
      //Key controls
      if(playerControl){
        ButtonPresses();
      }
        pos.add(PVector.mult(direction,speed));
        
    }
    
    void brake(){
      speed*=0.95;
    }
    
    
    
    void shoot(){
      resetMatrix();
      println("YEERRR");
      translate(pos.x,pos.y);
      fill(#ff0000,40);
      stroke(#ff0000);
      strokeWeight(3);
      triangle(-342,height,0,74,+208,height);
      
      //println(car.pos.x,car.pos.y);
      resetMatrix();
    }
   void fallingShip(){
     pos.add(vel);
     vel.add(acc);
   }
   
   void ButtonPresses(){
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
