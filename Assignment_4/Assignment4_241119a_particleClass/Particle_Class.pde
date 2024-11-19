class Particle{
  //PROPERTIES
  PVector position,heading;
  color c;
  int size;
  
  
  //CONSTRUCTORS
  Particle(float x,float y, int s){
    position= new PVector(x,y);
    heading= new PVector(30,0);
    c=color(int (random(color(80,100,255))));
    size=s;
  }
  
  //METHODS
  void display(){
    fill(c);
    square(position.x,position.y,100);
  }
  
  void update(){
    position.add(PVector.random2D());
  }
}
