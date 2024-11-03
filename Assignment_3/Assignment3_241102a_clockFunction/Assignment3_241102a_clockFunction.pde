//Set up variables
float secondsRadius;
float minsRadius;
float hrsRadius;

void setup(){
  size(600,600);
  noStroke(); 
  int radius = min(width, height)/2;
  secondsRadius = (radius)*0.72;
  minsRadius = (radius)*0.60;
  hrsRadius = (radius)*0.50;
  
}
void draw(){
  background (255); 
  //loop for lines marking time 
  stroke(0);
  strokeWeight(3);
  //Angles for sin & cos (REF: clock()|processing.org)
  //subtract by 1/4 TAU to make it start at top (REF: clock()|processing.org)
  float s = map(millis(), 0, 1000, 0, TAU) - TAU/4;//span of 1 sec
  float m = map(minute() + norm(millis(), 0, 60000), 0, 60, 0, TAU) - TAU/4;//span of 1 min
  float h = map(hour() + norm(millis(),0,3600000), 0, 12, 0, TAU * 2) - TAU/4;//span of 1 hour

  
  pushMatrix();
  translate(0,150);
  
  float n=12.0;//set loop to run 12 times
    for(int i = 0;i<n;i++){
      line(295,i/n*300,305,i/n*300);
    }
   popMatrix();
   
 //measure minutes  
  noStroke();
  //set variables for triangle 
  float initialY;
  float triangleGrowth=map(millis(), 0, 3600000, 0, 309);//height difference between 
                                                         //bottom and top values
  int resetTime=3600000;//60 min in millis
  int lastResetTime = 0;
  
  initialY=457;//first Y1 value at bottom of triangle
  float x1 = 20 - (triangleGrowth / 15); // Adjust scale
  float x2 = 20 + (triangleGrowth / 15); // Adjust scale
  float y1 = initialY - triangleGrowth; // Adjust scale


  fill(#0000ff,75);
  
  boolean maxLvl=((millis()-lastResetTime)>= resetTime);
    if(maxLvl){
      lastResetTime=millis();
      initialY=350;//set value to bottom of the gray triangle
    }
  triangle(422 + x1, y1-sin(m)*minsRadius,  // Adjust position based on growth
          151 + x2, y1-sin(m)*minsRadius,
          301, 457);

  //setting up water clock elements
  fill(#767676);//sets fill to gray
  rect (59,95,75,444);
  rect (475,95,75,444);
  arc(96,83,84,82,0,TAU/2);
  arc(512,90,84,82,0,TAU/2);
  //draw measuring vessels
  fill(#767676,95);
  triangle(410,148,
           300,457,
           198,148);
  arc(301,475,
      288,248,
      0,TAU/2);
}
