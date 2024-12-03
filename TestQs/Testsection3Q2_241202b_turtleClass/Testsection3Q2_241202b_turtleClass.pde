Turtle t;
void setup(){
  size(600,600);
  background(255);

  t=new Turtle(0,0);

}

void draw(){
   translate(0,height/2);
   t.forward(99);//px
   t.turn(144);//144 degrees
   

}
