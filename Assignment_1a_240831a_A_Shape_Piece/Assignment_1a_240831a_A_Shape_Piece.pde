// GD 105 Assignment 1a - The Shape Piece
// IDEA - Make a bathroom sign person
void setup (){
  size (500,500);
  background (0);
  noStroke ();
}
void draw (){
 // Draw a circle
// Style Circle 
  stroke(#B8FCCA);
  strokeWeight (50);
  circle (height/2,width/3,50);
// Draw a rectangle 
// Style Rectangle
  stroke (#B8FCFB);
  strokeWeight (100);
  rect(235,265,30,50);
//Draw and Style arms
  strokeWeight (50);
  line (100,300,180,240);
  line (400,300,320,240);
//Draw and Style legs
  line (210,450,210,370);
  line (290,450,290,370);
//Save work as png
  if(frameCount==1)
  save("outputShapePiece.png");
}
  
