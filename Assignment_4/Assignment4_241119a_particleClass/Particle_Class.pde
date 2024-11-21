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
    heading= new PVector(40,50);
    size=s;
    
    pinkArray= a[int(random(3))];
    greenArray= b[int(random(3))];
    blueArray = c[int(random(3))];
    beigeArray =d[int(random(3))];  
  }
  
  //METHODS
  void display(){
        //Add more icecream cones w. spacebar
    if(keyPressed&&key==ENTER){
      position.x = random(width);
      position.y= random(height);
      }
    
    fill(pinkArray);
    circle(position.x,position.y-150,size+15);
    fill(greenArray);
    circle(position.x,position.y-50,size+25);
    fill(blueArray);
    circle(position.x,position.y+50,size+35);
    fill(beigeArray);
    triangle(position.x,position.y+400,
            position.x+50,position.y+100,
            position.x-50,position.y+100);
  }
  
  void update(){
    position.add(PVector.random2D());
  }
}
