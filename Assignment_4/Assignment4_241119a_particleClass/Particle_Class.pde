class Particle{
  //PROPERTIES
  PVector position,heading;
  //color arrays for ice cream scoops
  color[] a ={#818386,#030508,
              #FAFBFC,#47484B}; //monochrome
  int size,monochromeArray;

  
  
  //CONSTRUCTORS
  Particle(float x,float y, int s){
    position= new PVector(x,y);
    heading= PVector.random2D().mult(int(random(10,15)));
    size=s;
    
    monochromeArray=  a[int(random(3))];
  }
  
  //METHODS
  void display(){
    resetMatrix();
    translate(position.x,position.y);
   

    fill(monochromeArray);
    circle(0,-50,size-40);

  }
  void update(){
    position.add(heading.rotate(random(0.02)));
  }
}
