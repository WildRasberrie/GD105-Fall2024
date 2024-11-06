//Set up variables //REF: clock ()| processing.org 
float secondsRadius;
float minsRadius;
float hrsRadius;

// Draw a clock

void setup () {
  size (600, 600);
  noStroke();
  ellipseMode(CENTER);
  background(255);
  //REF: clock ()| processing.org 
  int radius = min(width, height)/2;//setting radius to size of circle
  secondsRadius = (radius)*0.72;
  minsRadius = (radius)*0.60;
  hrsRadius = (radius)*0.50;
  //Draw first circle of clock
  translate(300, 300);//sets origin point to center

}
void draw() {
  translate (300, 300);// origin to center
  //set variable for size
  int size = 100;
  // Angles for sin() and cos() REF:Clock (), Processing.org
  //60,000 millis:60 sec:1 min
  float s = map(millis(), 0, 60000, 0,(TAU))-TAU/4;//Setting rotation clockwise
  float m = map(minute()+norm(millis(), 0, 60000), 0, 60, 0,(TAU))-TAU/4;
  float h = map(hour()+norm(minute(), 0, 60), 0, 24, 0,(TAU*2))-TAU/4;
    
  pushMatrix();
  noStroke();
  fill (#f17714);
  float y1=0+sin(s)*secondsRadius;
  float x1=0+cos(s)*secondsRadius;
  println(y1);
  //REF: lerpColor()|processing.org
  color from = color(#F5582C);
  color to= color(#F59E2C);

  boolean colorChange=y1>=-220;
  if(colorChange){
      fill(lerpColor(from,to,map(millis(),0,3000000,0,TAU)));}
  circle (x1,y1, size*2);
  popMatrix();
  //draw oven burner

  stroke(0);
  strokeWeight(25);//set fill to black
  line(0,-300,0,300);
  line(-300,0,300,0);

  // Draw second circle 
 //panhandle for background circle 1
  pushMatrix();
  rotate(TAU*0.05);
  stroke(0);
  strokeWeight(1);
  fill(#4E645D);
  rect(100,34,280,120);
  popMatrix();
 //background circle 1
  fill (#4E645D);
  circle(0, 0, 550);
  //background circle 2
  fill(#324c30);
  circle (0, 0, 450);
  //Draw min circle over background
  fill (#f3fa8a);
  circle (-30+cos(m)*minsRadius,-15+sin(m)*minsRadius, size);

  //background circle 3
  fill(#f5f3cb);
  circle(0, 0, 250);
  //Draw hr circle over background
  fill(#ebb990);
  circle(50+cos(h)*hrsRadius,-50+sin(h)*hrsRadius, size);
 

  
}
