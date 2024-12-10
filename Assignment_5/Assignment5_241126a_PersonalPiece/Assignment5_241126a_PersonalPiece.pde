Car c;
Cows[] c2;
 
void setup(){
  size (600,600); 
  c = new Car (width,height/2.0); 
  c2 = new Cows[15];
  for (int i=0;i<c2.length;i++){
    c2[i]=new Cows(width/2.0,height/1.1,50);
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
  
  for (int i=0;i<c2.length;i++){
    c2[i].display();
    c2[i].update();
    }
  }
