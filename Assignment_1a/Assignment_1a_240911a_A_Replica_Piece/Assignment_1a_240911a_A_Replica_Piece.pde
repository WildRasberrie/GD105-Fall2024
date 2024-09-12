//Set up text
PFont funfont;

void setup (){
  size (1000,1000);
  strokeCap (ROUND);
  noStroke ();
  funfont = loadFont ("Sylfaen-150.vlw");
}
void draw (){
   background (#a8bfd7);
   fill (0); 
   textFont (funfont);
   textAlign (CENTER,CENTER);
   text ("P    X  A  R",500,500);
// Design Lamp 
//Base
  
  fill (108);
  stroke (125);
  arc (293,543,70,12, 56, 231);
  fill (200);
  stroke (200);
  arc (293,540,67,9, 61, 231);
  fill (109);
  stroke (108);
  arc (291,532,13,1,118,155);
  fill (60);
  stroke (60);
  rect(289,523,3,5,113);
  fill (60);
  stroke(60);
  line (249,550,334,551);
 // Lamp Stem
 strokeWeight (5);
 line(292,521,307,513);
 line(290,527,305,521);
 line(281,505,296,499);
 line(297,501,307,519);
 line(289,525,282,508);
 line(321,475,322,457);
 line(298,498,319,478);
 line(281,502,283,488);
 line(284,488,313,461);
 stroke (136);
 line(288,488,298,493);
 //Lamp Head 
 fill (#FCFCE0);
 strokeWeight (2);
 circle (320,431,62);
 stroke (136,125);
 circle (320,431,30);
  
//Light cast (Show use of Transformations)
  noStroke();
  fill(255,61);  
  arc (278,566,363,31,600,603);
  pushMatrix();
  fill(255,21); 
  translate(309,582);
  scale (1.1);
  arc (0,0,226,22,600,603);
  scale (1.2);
  arc (0,0,226,22,600,603);
  scale (1.2);
  arc (0,0,226,22,600,603);
  scale (1.4);
  arc (0,0,226,22,600,603);
  scale (1.2);
  arc (0,0,226,22,600,603);
  scale (1.0);
  arc (0,0,226,22,600,603);
  popMatrix ();
// Light Cast outline  
  fill(255,12);
  stroke (255,50);
  strokeWeight (5);
  line (338,553,517,564);
  line (246,550,72,565);
 
 if(frameCount ==1)
   save("A_Replica_Piece.png");
}
