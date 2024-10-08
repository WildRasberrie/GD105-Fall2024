// Unit 2 Assignment 2 : A Collage Piece

//Declare variables
PImage cat;
PImage dog;
PImage table;
PImage sofa;
PImage chair;
PImage freeBackground;

void setup (){
  size (600,600);
  background (250);
  imageMode (CENTER);
// Assign Variables to Image
  cat = loadImage ("112638-removebg-preview.png");
  dog = loadImage ("112529-removebg-preview.png");
  table = loadImage ("112452-removebg-preview.png");
  sofa = loadImage ("112430-removebg-preview.png");
  chair = loadImage ("112500-removebg-preview.png");
  freeBackground = loadImage ("Screenshot 2024-10-08 120506.png");
}
void draw (){
  float size;
  //Add images for collage
  size = 1.3;  // set size 
  image (freeBackground, 300,300,
         freeBackground.width*size,
         freeBackground.height*size);
  size = 0.3;  // set size 
  image (cat, 300,300,
         cat.width*size,
         cat.height*size);
 // Rotate Chair 
  image (chair, 250,500);

}
