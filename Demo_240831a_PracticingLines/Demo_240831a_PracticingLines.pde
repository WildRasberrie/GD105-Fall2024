// Practice for GD 105 Unit 1 : Creating lines

void setup () {
  size (500,500);
  noStroke ();
  strokeCap (SQUARE);

// Set line thickness

strokeWeight (25);
}

// Make a diagonal line

void draw () {
  stroke (#B278AC);
  line (height,0,0,width);


// Make a straight horizontal line 

  stroke (#71E585);
  line (0,250,500,250);
  
// Make a straight vertical line

  stroke (#4E64CB);
  line (250,0,250,500);

}

  



  
  
  
  
