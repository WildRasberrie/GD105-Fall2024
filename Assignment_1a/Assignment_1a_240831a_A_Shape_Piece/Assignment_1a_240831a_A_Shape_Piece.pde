void setup () {
  size (1000, 1000);
  strokeWeight (5);
  noStroke ();
  strokeCap (SQUARE);
}
void draw () {
  background (180);
  stroke (0);
  fill (0);
  // Dinosaur head
  ellipse (467, 155, 374, 200);
  rect (302, 170, 150, 300);
  rect (433, 317, 127, 36);
  //Dinosaur Arms
  strokeWeight (60);
  line (500, 500, 652, 500);
  line (622, 500, 622, 566);
  //Dinosaur Tail
  arc (282, 620, 496, 261, 590, 594, 395);
  stroke(180);
  ellipse (117, 587, 147, 55);
  // Dinosaur body
  stroke(0);
  fill(0);
  ellipse (389, 560, 300, 453);
  // Dinosaur legs
  ellipse (378, 819, 55, 207);
  line (508, 921, 381, 923);
  ellipse (512, 796, 36, 204);
  line (630, 894, 518, 897);
  //Dinosaur spikes
  stroke (#000000);
  fill (#000909);
  triangle (346, 95, 343, 221, 274, 96);
  triangle (308, 205, 339, 264, 258, 261);
  triangle (380, 144, 376, 289, 245, 210);
  triangle (381, 108, 375, 228, 260, 153);
  triangle (324, 269, 403, 304, 282, 306);
  
  if(frameCount==1) 
    save("outputAShapePiece.png");
}
