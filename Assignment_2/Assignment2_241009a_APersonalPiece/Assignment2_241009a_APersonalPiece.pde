// Assignment 2: A Personal Piece 
//IDEA! have a car driving across the screen

//Set Image variables
PImage car;
PImage buildings;
PImage clouds;
PImage street;

void setup (){
  size (1000,1000);
  noStroke ();
  imageMode(CENTER);
  car = loadImage ("Car1.png");
  buildings = loadImage("Building.png");
  clouds = loadImage("cloud.png");
  street = loadImage("Street.png");

}
void draw (){
  background (#62D4F2);
  //set motion for clouds
  int time = frameCount % 100; // framecount [0..99]
  float x,x2,y;
  x = map(time,0,100,width*0.05,width*1.0); // want object to move from left to right
  x2=map(time,75,100,width*0.05,width*0.3);
  y = map(time,0,100, height*0.1,height*0.1);// want object in the top of screen
  image (clouds,x,y);
  image (clouds,x2,y);

 // Add in other images
  pushMatrix();
  float size;
  translate (500,500);
  size=1.5;
  image (buildings,-100,0,
         buildings.width*size,
         buildings.height*size);
 
  size=1.25;
  image (buildings,125,50,
         buildings.width*size,
         buildings.height*size);
  size=1.4;
  image (street,0,364,
         street.width*size,
         street.height*size);
  popMatrix();
 
 //set motion for car
  translate(500,700);
  image (car,x2,y);    
  
//Save Output GIF 
  if(frameCount<=100);
  saveFrame("frame/frame-####.png");
}
