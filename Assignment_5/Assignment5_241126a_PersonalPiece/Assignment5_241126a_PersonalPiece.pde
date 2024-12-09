Car c;
 
void setup(){
  size (600,600);
  c = new Car (random(width),random(height/2)); 
  }
  
void draw(){
  background (180);
  
  //Darw visual boarder
  stroke(0);
  strokeWeight(10);
  line(0,height/2,width,height/2);
  line(5,0,5,height/2);
  line(width-5,0,width-5,height/2);
  
  c.display();
  c.update();
  }
