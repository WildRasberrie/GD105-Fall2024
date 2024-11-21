class Particle{
  //PROPERTIES
  PVector position,heading;
  //color arrays for ice cream scoops
  color[] a ={#E325CA,#F26ED4,#AA659A,#F290E7};//shades of pink
  color[] b ={#6CB27C,#16F794,#27E325,#25E39E};//shades of green
  color[] c = {#321CFF,#A4C6FA,#1BB3DB,#309DA0};//shades of blue
  color [] d = {#AF9B65,#CEB779,#AAA259,#B2A26C};//shades of beige 
  int size;
  int pinkArray,greenArray,blueArray,beigeArray;
  
  
  //CONSTRUCTORS
  Particle(float x,float y, int s){
    position= new PVector(x,y);
    heading= PVector.random2D().mult(35);
    size=s;
    
    pinkArray=  a[int(random(3))];
    greenArray= b[int(random(3))];
    blueArray = c[int(random(3))];
    beigeArray= d[int(random(3))];  
  }
  
  //METHODS
  void display(){
    resetMatrix();
    translate(position.x,position.y);
    rotate(heading.heading());

    fill(pinkArray);
    circle(0,-150,size+15);
    fill(greenArray);
    circle(0,-50,size+25);
    fill(blueArray);
    circle(0,+50,size+35);
    fill(beigeArray);
    triangle(0,+400,
            +50,+100,
            -50,+100);
  }
  void update(){
    position.add(heading.rotate(0.05));
  }
}
