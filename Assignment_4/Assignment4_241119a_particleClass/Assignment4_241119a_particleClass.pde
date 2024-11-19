Particle [] p;
void setup(){
  size(1024,1024);
  background (180);
  p=new Particle[150];
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
