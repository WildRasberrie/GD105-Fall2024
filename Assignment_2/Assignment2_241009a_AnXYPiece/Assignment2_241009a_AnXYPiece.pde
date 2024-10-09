//Assignment 2: An X Y piece
//IDEA! Make Caterpillar going from left to right 
void setup (){
  size (500,500);
  noSmooth();
  
}
void draw (){
  background (180);
  noStroke();
  strokeWeight (5);
  stroke (0);
  
  int time = frameCount % 100; // framecount [0..99]
  float x,y,x2,x3,x4,x5,x6;
  x = map(time,0,100,width*0.05,width*1.0); // want object to move from left to right
  x2 = map(time,10,100,width*0.05,width*0.90);//want object to move slower than previous
  x3 = map(time,20,100,width*0.05,width*0.80);
  x4 = map(time,30,100,width*0.05,width*0.70);
  x5 = map(time,40,100,width*0.05,width*0.60);
  x6 = map(time,50,100,width*0.05,width*0.50);
  y = map(time,0,100, height*0.50,height*0.50);// want object in the middle of screen
//make caterpillar body
  //Alternate between red and green
  fill(#ff0000);//red
  circle (x,y,50);
  fill(#00ff00);
  circle (x2,y,50);
  fill(#ff0000);
  circle (x3,y,50);
  fill(#00ff00);
  circle (x4,y,50);
  fill(#ff0000);
  circle (x5,y,50);
  fill(#00ff00);
  circle (x6,y,50);
  
   if(frameCount<=100)
     saveFrame("frame/frame####.png");
}
