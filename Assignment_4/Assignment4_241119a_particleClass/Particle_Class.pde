class Particle{
//PROPERTIES
PVector position;
color c;
int size;
}

//CONSTRUCTORS
Particle(float x,float y, int s){
  position= new PVector(x,y);
  c=color(int (random(256)));
  size=s;
}

//METHODS
void display(){
  fill(c);
  circle(position.x,position.y);
}

void update(){
  position.add(PVector.random2D());
}
