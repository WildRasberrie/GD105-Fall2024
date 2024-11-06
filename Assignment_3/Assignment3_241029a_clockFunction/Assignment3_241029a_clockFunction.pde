PFont segoe;

//Set up variables //REF: clock ()| processing.org 
float secondsRadius;
float minsRadius;
float hrsRadius;
int timeChecked = 0;
// Draw a clock

void setup () {
  size (600, 600);
  noStroke();
  ellipseMode(CENTER);
  background(255);
  segoe = loadFont("SegoeUIBlack-24.vlw");
  //REF: clock ()| processing.org 
  //setting radius of circles
  int radius = min(width, height)/2; 
  int radius1=min(550,550)/2;
  int radius2=min(250,250)/2;
  secondsRadius = (radius)*0.72;
  minsRadius = (radius1)*0.60;
  hrsRadius = (radius2)*0.50;
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
  //REF: lerpColor()|processing.org
  color from = color(#F5582C);
  color to= color(#F59E2C);
  boolean colorChange=y1>=-220;
  if(colorChange){
      fill(lerpColor(from,to,map(millis(),0,3000000,0,TAU)));}
  // Draw second circle 
  circle (x1,y1, size*2);
  popMatrix();
  //draw oven burner
  stroke(0);
  strokeWeight(25);//set fill to black
  line(0,-300,0,300);
  line(-300,0,300,0);

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
  square (-45+cos(m)*minsRadius,-45+sin(m)*minsRadius, size*0.75);

  //background circle 3
  fill(#f5f3cb);
  circle(0, 0, 250);
  //Draw hr circle over background
  fill(#ebb990);
  circle(-10+cos(h)*hrsRadius,-10+sin(h)*hrsRadius, size);
  
  fill(0);
  textFont(segoe,20);
  text("CHECK TIME:",-293,-284);
}
    void mouseClicked(){
      if(timeChecked == 0){
      //draw textbox for current time
        stroke(0);
        strokeWeight(5);
        fill(255);
        rect(-279,-237,97,-44);
      
        fill(#ff0000);
        textAlign(LEFT);
        textFont(segoe,22);
        
        int hr = hour();
        int min = minute();
        int sec = second();
        
        boolean under10S,under10M;
        under10S= (sec<10);
        under10M= (min<10);
     
        if(under10S){
          text(hr+":    :"+"0"+sec,-275,-250);
        }else{
            text(hr+":    :"+sec,-275,-250);       
        } 
        if(under10M){
          text(hr+":"+"0"+min+":",-275,-250);
        }else{
            text(hr+":"+min+":",-275,-250);
            println("THE TIME IS:\t"+hour()+":",minute()+":",second());       
        } 
       
    }
}
