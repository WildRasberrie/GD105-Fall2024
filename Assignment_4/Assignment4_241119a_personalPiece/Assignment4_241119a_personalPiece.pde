Car c;
void setup(){
 size(1024,1024); 
 c=new Car(width/2.0,height/2.0);
}

void draw(){
  background(0);
  c.display();
  c.update();
}
