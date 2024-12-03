// Practicing adding Images to processing
PImage sunset; // Declaring variable
//add clipped images to layer on top of background image 
PImage sun;
PImage chair;
void setup (){
  size (600,600);
  sunset = loadImage ("123.png");
  sun = loadImage ("Sun123.png");
  chair = loadImage ("lawnchair12.png");
  imageMode(CENTER);
}
void draw () { 
  image(sunset,304,261);
  float size;
  size = 0.5;
  image (sun,70,105,
              sun.width * size, 
              sun.height * size);
  size = 0.6;
  image (chair,316,286,
                chair.width*size,
                chair.height * size); 
              
   if (frameCount == 1)
     save ("democollage.png");
}
