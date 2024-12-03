//Test Unit 4: Section 5

//FlyingTurtle subclass
FlyingTurtle t1;

void setup(){
  size(600,600);
  background(0);
  t1 = new FlyingTurtle(width/4,height/2);  
}

void draw(){    
  t1.forward(300);
  t1.turn(145);
  
  t1.update();
  t1.display();
}

  
