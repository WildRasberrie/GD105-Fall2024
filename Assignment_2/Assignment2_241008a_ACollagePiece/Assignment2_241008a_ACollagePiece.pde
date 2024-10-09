// Unit 2 Assignment 2 : A Collage Piece
// IDEA! Mimi being free with no human supervision
//Declare font 
PFont georgiaBold;
//Declare Image Variables
PImage catPlays;
PImage catPlays2;
PImage catSlays;
PImage catLays;
PImage table;
PImage sofa;
PImage chair;


void setup () {
  size (1000, 1000);
  // Assign Text
  georgiaBold =  loadFont("Georgia-BoldItalic-48.vlw");
  // Assign Variables to Image
  //Cat Photos
  catPlays = loadImage ("MIMI_7044.png");
  catPlays2 = loadImage ("MIMI_7045.png");
  catSlays = loadImage ("MIMI_7038.png");
  catLays = loadImage ("MIMI_7037.png");
  //Drawn Furniture
  table = loadImage ("112452-removebg-preview.png");
  sofa = loadImage ("112430-removebg-preview.png");
  chair = loadImage ("112500-removebg-preview.png");
}
void draw () {
  noStroke();
  background (#CDA7CE);
  textAlign (LEFT,LEFT); // Style Text
  textFont (georgiaBold);
  fill (0);
  text ("BEHOLD!\nA cat with no supervision",50,100);
  fill (#F4E6F5);
  rect (0,0,25,500);
  fill(#A57D58);
  rect (0,500,1000,500);
  imageMode (CENTER);
  translate (500, 500);
  float size;
  //Add images for collage
  size = 1.3; // Set size
  image (sofa, 146, 0,
    sofa.width*size,
    sofa.height*size);
  size = 2.0;
  pushMatrix ();
  rotate (TAU*(-1.0/4.4));// Rotate Chair
  image (chair, -250, -328,
    chair.width*size,
    chair.height*size);
  popMatrix ();
  pushMatrix ();
  scale (0.43);  // set scale
  image (catPlays, -775, 600);
  rotate (TAU*(1.0/3.0));
  image (catPlays2, -168, -666);
  popMatrix ();
  pushMatrix();
  scale (0.3); //set scale
  image (catLays, -1, -666);
  rotate (TAU * -(1.0/4.0));
  popMatrix ();
  size = 1.5;
  image (table, 100, 250,
    table.width*size,
    table.height*size);
  scale (0.3);
  image (catSlays, 750, 550);
  
  //Save Collage Assignment 
   if (frameCount == 1)
     save("OutputACollagePiece_Assignment2.png");
}
