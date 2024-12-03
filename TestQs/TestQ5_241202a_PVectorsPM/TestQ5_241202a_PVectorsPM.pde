//Move PVector P towards PVector M
PVector p,m;
PVector pH;
int size;//set size

void setup(){
  size(600,600);//size of canvas 
  noStroke();//takes off border
  
  m=new PVector (550,500);
  p=new PVector (50,550);
  size=30;
  
  pH=PVector.fromAngle(0.0);
  pH.setMag(1.0);//heading with magnitude of 1 and random direction
}

void draw(){
  background(180);//background to gray
  fill(0);
  m.set(mouseX,mouseY);
  circle(m.x,m.y,size);//m

  pH.rotate(radians(5));//rotate pH 5 degs
  circle(p.x,p.y,size);//p

  
  p.add(pH); 
}
