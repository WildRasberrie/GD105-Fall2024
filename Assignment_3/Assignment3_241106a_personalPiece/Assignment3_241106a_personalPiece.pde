//Assignment 3: A Personal Piece

PVector bird;
PVector birdVelocity;
float birdRadius = 100;
//Declare Arrays and Allocate space
color[] pallete= {#F2BA49, #B79936, #9F90FA};
void setup() {
  size(600, 600);
  noSmooth();
  strokeCap(PROJECT);
  bird=new PVector(width/2, height/2);
  birdVelocity=PVector.random2D().mult(5);
}
void draw() {
  background(196);
  //set movement for wings
  float wings=50+(sin(frameCount*0.05)*5);
  
  //set movement for swing
  float swing=50+(cos(frameCount*0.05)*30);
  
  //draw swing
  stroke(255);
  strokeWeight(20);
  line(450+swing,245,500+swing,245);
  stroke(#7C4A1B);
  strokeWeight(15);
  line(500,0,500+swing,235);
  line(450,0,450+swing,235);

  
  //draw bird body and head
  noStroke();
  fill(pallete[2]);
  circle(bird.x, bird.y, birdRadius*0.75);
  ellipse(bird.x+50, bird.y+50, 100, birdRadius*0.75);

  //draw bird wings
  stroke(0);
  strokeWeight(2);
  ellipse(bird.x+50, wings+bird.y, 35, 50);

  //draw bird beak
  fill(#F2BA49);
  triangle(bird.x-64, bird.y-2, bird.x-32, bird.y-17, bird.x-34, bird.y+11);

  //draw bird eye
  fill(255);
  circle(bird.x, bird.y-15, birdRadius*0.15);
  fill(0);
  circle(bird.x, bird.y-12, birdRadius*0.10);

  //udpate for next frame
  bird.add(birdVelocity);

  //set up boolean variables
  boolean bounceOffRight = bird.x + birdRadius>width;
  boolean bounceOffLeft = bird.x-birdRadius<-50;
  boolean bounceOffTop = bird.y - birdRadius<-75;
  boolean bounceOffBottom = bird.y+birdRadius>height+25;

  if (bounceOffRight||bounceOffLeft) {
    //x-axis collision
    birdVelocity.x*= -1;
  }
  if (bounceOffTop||bounceOffBottom) {
    //y-axis collision
    birdVelocity.y*=-1;
  }

  //create Bird Cage
  strokeWeight(10);
  stroke(pallete[1], 148);
  line((width/2)-10, height/6, (width/2)-10, 0);
  line((width/2)-10, 495, (width/2)-10, height);
  //use loops for bars
  float n=12.0;//set loop to run 12 times
  float j=6.0;
  for (int i = 0; i<n; i++) {
    stroke(pallete[0]);
    line(i/n*width+39, height-110, i/n*width+39, 100);
  }
  for (int i = 0; i<j; i++) {
    stroke(pallete[1], 148);
    //left side cage
    line((i/(j))*width/2-11, height-505, (i/(j))*width/2+20, -2);
    line((i/(j))*width/2+19, height, (i/(j))*width/2-12, 495);

    //right side cage
    line((i/(j))*width/2+339, height-505, (i/(j))*width/2+308, 2);
    line((i/(j))*width/2+310, height, (i/(j))*width/2+338, 497);
  }
  if(frameCount<=150);
    saveFrame("frames/frame-####.png");
}
