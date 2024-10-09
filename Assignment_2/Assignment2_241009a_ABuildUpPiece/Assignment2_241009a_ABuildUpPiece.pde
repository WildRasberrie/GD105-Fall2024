// Assignment 2: A Build Up Piece
//IDEA! Draw a flower
void setup () {
  size (1000, 1000);
  background (0); // Calling Background 1x for Buildup
  noSmooth ();
}
void draw () {

  translate (500, 500);
  noStroke();//Set Style
  stroke(pickColor()); // Add random colors to outline
  strokeWeight(5);
  fill (0);
  //Set object for motion
 
  rotate (TAU*(1.0/2.0));
  rect (cos (frameCount*0.01)*width*0.45, sin (frameCount*0.02)*height*0.15, 30, 50);
  rotate (TAU*(1.0/3.0));
  rect (cos (frameCount*0.01)*width*0.45, sin (frameCount*0.02)*height*0.15, 30, 50);
  rotate (TAU*(1.0/4.0));
  rect (cos (frameCount*0.01)*width*0.45, sin (frameCount*0.02)*height*0.15, 30, 50);
  rotate (TAU*(1.0/6.0));
  rect (cos (frameCount*0.01)*width*0.45, sin (frameCount*0.02)*height*0.15, 30, 50);
//Set flower center
  stroke(0);
  circle (0,0,150);
    
//save file 
  if(frameCount <= 650)
  saveFrame("frames/frame-####.png");
}

// Set Color Variety
color pickColor() {
  int r, g, b, a;
  r= floor (random (180, 255));
  g= floor (random (180, 255));
  b= floor (random (180, 255));
  a= 255;
  color c = color (r, g, b, a);
  return c;
}
