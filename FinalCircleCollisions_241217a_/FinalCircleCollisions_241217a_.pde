int size;
PVector pos1;
void setup(){
  size(600,600);
  size=100;
  pos1=new PVector (width/2.0,height/2.0);
  
}
void draw(){
  background(180);
  stroke(0);
  strokeWeight(3);
  circle(pos1.x,pos1.y,size);
  circle(mouseX,mouseY,size);
  boolean isColliding=(dist(pos1.x,pos1.y,mouseX,mouseY)<size/2);
  if (isColliding){
    fill(#ff0000);//red
    isColliding=true;
    println("true");
   
  }else{
    isColliding=false;
    fill(0);//black
    println(false);
  }

}
