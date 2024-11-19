Particle [] p;
void setup(){
  size(1024,1024);
  p=new Particle[150];
}
void draw(){
  for (int i=0;i<p.length;i++){
  p[i]=new Particle(width/2,height/2,100);
  p[i].update();
  }
  
}
