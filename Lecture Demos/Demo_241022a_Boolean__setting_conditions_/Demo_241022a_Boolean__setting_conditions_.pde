void setup () {
  size (666,666);
  background (180);
  noSmooth(); // no aliasing

}
void draw (){ 
  boolean Bottom = mouseY > height/ 2; // setting boolean to change on bottom half
  
  
  if (Bottom){ 
    fill (#b3e1c0); // set fill to blue 
  }
  else  {
    fill (#ea9fe7); // set fill back to white
  }
  circle (mouseX, mouseY, 100);
}
