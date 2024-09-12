PFont georgia;

void setup () {
  size (500, 500);
  noStroke();
  background (#8ECBDB);
  georgia = loadFont("Georgia-BoldItalic-48.vlw");

}
void draw () {
  // Text Style
  fill (#E8B22A);
  textAlign (LEFT,CENTER);
  textFont (georgia);
  text ("A Sunset...",12,46);
  // Draw Sunset
 

  fill (#E8E236, 181);
  rect (0, 235, 500, 350);
  fill (#F0B15E, 124);
  rect (0, 273, 500, 350);
  fill (#F0635E, 54);
  rect (0, 314, 500, 202);
  //Draw sun 

  fill (#F0F50F);
  triangle (318,313,432,363,273,338);
  triangle (23,499,311,242,309,303);
  triangle (226,282,254,232,288,312);
  triangle (278,300,468,252,323,324);
  triangle (199,301,179,246,263,280);
  triangle (182,358,130,340,186,306);
  triangle (186,334,141,282,205,295);
  fill (#dbd41e);
  circle (250,358,149);
  // Draw Water 
  fill (#349BE8);
  rect (0,350,500,200);
  triangle (0,350,25,325,50,350);
  triangle (50,350,75,325,100,350);
  triangle (100,350,125,325,150,350);
  triangle (150,350,175,325,200,350);
  triangle (200,350,225,325,250,350);
  triangle (250,350,275,325,300,350);
  triangle (300,350,325,325,350,350);
  triangle (350,350,375,325,400,350);
  triangle (400,350,425,325,450,350);
  triangle (450,350,475,325,500,350);
  //Draw Clouds 
  fill (255);
  arc (80,226,174,100,75,247);
  arc (79,229,131,132,49,237);
  arc (303,147,187,105,58,222);
  arc (303,148,136,137,75,247);
  arc (401,280,174,100,75,247);
  arc (402,272,122,119,73,241);
  
  if(frameCount==1) 
  save ("outputA_Personal_Piece.png");
}
