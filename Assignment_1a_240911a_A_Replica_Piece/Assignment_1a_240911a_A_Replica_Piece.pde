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
  
//Light cast 
  noStroke();
  fill(255,165);
  arc (291,568,226,22,600,603);
  scale(1.0);
  fill(228,141);
  arc (295,576,343,24,600,603);
  scale(1.0);
  fill (204,127);
  arc (316,592,561,36,600,603);
  scale(1.0);
  fill (204,54);
  arc (314,608,779,51,600,603);
// Light Cast outline  
  fill(255,12);
  stroke (255,50);
  strokeWeight (5);
  line (379,562,570,587);
  line (235,559,34,590);
 
 if(frameCount ==1)
   save("A_Replica_Piece.png");
}
