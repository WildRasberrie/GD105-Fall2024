void setup (){
  size (500,500);
  noStroke ();
  strokeCap (ROUND); 

}
// Assignment 1a. A Line Piece 
//Make a Maze 
// Setting up line style
void draw (){
  stroke (0);
  strokeWeight (7);
  background (#B9CB90);
// IDEA - Diamond Shaped Maze
// Base Horizontal Lines
  line(120,100,430,100);
  line(100,150,410,150);
// Base Diagonal Lines (TL)
  line(120,100,100,120);
  line(100,150,205,315);
  line(220,340,250,400);
// Base Diagonal Lines (TR)
  line(430,100,450,150);
  line(450,150,250,400);
// Top Maze Horizontal lines
  line (120,150,150,115);
  line (200,100,170,135);
  line (310,150,345,115);
  line (400,100,365,135);
  line (392,150,420,120);
// Top Maze TL Triangle 1
  fill (#B9CB90);
  triangle(200,150,230,115,260,150);
// Top Maze TR Triangle 2
  triangle(260,100,290,130,320,100);
// Bottom Maze Horizontal Lines 
  line (270,327,410,150);
  line (220,340,345,180);
  line (205,315,305,180);
  line (185,280,270,170);
  line (245,150,180,235);
  line (195,170,150,230);
  line (175,150,145,190);
// Save as png  
  if(frameCount==1)
  save("outputALinePiece.png");
}
