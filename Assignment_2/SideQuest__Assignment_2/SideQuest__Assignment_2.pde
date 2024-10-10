
void setup() {
  size (1000, 1000);
  noStroke();
  noSmooth();
}
void draw() {
  background (#4CDFE5);
  translate (500, 500);
  rotate (frameCount*0.05); //Make Cat Face rotate 
  //Cat Face
  fill(#F5A6ED);
  circle (0, 0, 700);
  fill (0);
  rect (0-200, 0-100, 100, 50, 100);
  rect (0+100, 0-100, 100, 50, 100);
  //cat whiskers  

  rect (0-261, 0+-10, 129, 18, 50);
  rect (0-261, 0+17, 129, 18, 50);
  rect (0-261, 0+45, 129, 18, 50);
  
  rect (0+140, 0+-10, 130, 18, 50);
  rect (0+140, 0+21, 130, 18, 50);
  rect (0+140, 0+50, 130, 18, 50);
  //Cat Ears
  fill(#F5A6ED);
  triangle (-307, -410, -103, -329, -273, -209);
  triangle (297, -181, 133, -315, 323, -388);
  fill(0);
  triangle (-254, -339, -102, -299, -232, -192);
  triangle (276, -172, 129, -285, 271, -320);
  //Cat Mouth 
  fill (0);
  circle(0-50,200,150);
  circle(0+50,200,150);
  fill(#F5A6ED);
  circle(0-100,200-50,150);
  circle(0+100,200-50,150);
  
  //Save GIF
  if(frameCount*0.05<TAU*1.0){
  saveFrame("frame/frame-####.png");
  }  
}
