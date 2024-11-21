//IDEA: Abstract ice cream cone that melts (multiplies)  over time

//Assignment 4 : A Particle Piece 
Particle [] p;
void setup(){
  size(1024,1024);
  background (255);
  p=new Particle[100];
  for (int i=0;i<p.length;i++){
    p[i]=new Particle(width/2.0,height/2.0,100);
  }
}

void draw(){
  noStroke();
  for (int i=0;i<p.length;i++){
    p[i].display();
    p[i].update();
  }

}
