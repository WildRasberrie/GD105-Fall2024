// GD 105 Unit 1: A1 Assignment 

//The Text Piece - Setting up (size, background, setup/draw)
void setup (){
  size (500,500);
  background (#F59CEF);
}
//Make a Crossword puzzle
void draw (){
  
// Creating Vertical Lines
  line (280,100,280,400);
  line (250,100,250,400);
  line (70,100,70,250);
  line (100,100,100,250);
// Creating crossword vertical lines (small) 
  line (70,100,70,130);
  line (100,100,100,130);
  line (130,100,130,130);
  line (160,100,160,130);
  line (190,100,190,130);
  line (220,100,220,130);
  line (310,100,310,130);
  line (340,100,340,130);
  line (370,100,370,130);
  line (400,100,400,130);
  line (310,370,310,400);
  line (340,370,340,400);
  line (370,370,370,400);
  line (400,370,400,400);
  line (348,250,348,280);
  line (312,250,312,280);
  line (220,250,220,280);
  line (190,250,190,280);
  
// Creating horizontal lines  
  line (400,100,70,100);
  line (400,130,70,130);
  line (400,400,250,400);
  line (400,370,250,370);
  line (350,250,188,250);
  line (350,280,188,280);
  // Creating crossword horizontal lines
  line (280,340,250,340);
  line (280,310,250,310);
  line (280,280,250,280);
  line (280,250,250,250);
  line (280,220,250,220);
  line (280,190,250,190);
  line (280,160,250,160);
  line (280,130,250,130);
  line (70,160,100,160);
  line (70,130,100,130);
  line (70,190,100,190);
  line (70,220,100,220);
  line (70,250,100,250);
  
//Demostrate line style functions
  stroke (0);
  strokeWeight (7);
  strokeCap (SQUARE);

  if(frameCount==1)
    save("outputATextPiece.png");
  }
