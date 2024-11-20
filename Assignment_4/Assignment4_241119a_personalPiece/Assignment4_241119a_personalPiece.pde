Car c;
void setup(){
 size(1024,1024); 
 c=new Car(width/4.0,height/2.0);
}

void draw(){
  c.display();
  c.update();
}
