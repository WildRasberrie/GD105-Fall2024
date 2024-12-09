Car c;
Obstacles[] o;
 
void setup(){
  size (600,600);
  c = new Car (random(width),random(height/2)); 
  o = new Obstacles[15];
  for(int i=0;i<o.length;i++){
      o[i]=new Obstacles(width/2.0,height/1.0,50.0);
    }
  }
  
void draw(){
  background (180);
  
  //Draw visual boarder
  stroke(0);
  strokeWeight(10);
  line(0,5,width,5);
  line(0,height/2,width,height/2);
  line(5,0,5,height/2);
  line(width-5,0,width-5,height/2);
  
  c.display();
  c.update();
  
  for(int i=0;i<o.length;i++){
    o[i].display();
    o[i].update();
    }
  }
