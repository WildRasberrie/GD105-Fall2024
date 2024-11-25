//Assignment 4:Personal Piece

Turtle turtles;
int[] turns ={187,198,206};


void setup(){
  size(1024,1024);
  turtles=new Turtle(width/2,height/2);
  noSmooth();
  frameRate(1);
}

void draw(){
  background(180);
  scale(0.49);
  turtles.teleport(width*0.75,height*0.275);
  turtles.heading.set(1,0);
  for (int i=0;i<250;i++){
    turtles.forward(146);//moving forward 
    turtles.turn(turns[0]);//rotating 
    turtles.forward(200);//moving forward 
    turtles.turn(turns[1]);
    turtles.forward(-75);//moving forward 
    turtles.turn(turns[2]);
    turtles.forward(77);//moving forward 
    turtles.turn(turns[0]);
    turtles.forward(600);//moving forward 
    turtles.turn(turns[1]); 
    turtles.forward(-500);//moving forward 
    turtles.turn(turns[2]);
    turtles.forward(722);//moving forward 
    turtles.turn(109); 
  }
if(frameCount==1);
    save("output_PersonalPiece.png");
}
