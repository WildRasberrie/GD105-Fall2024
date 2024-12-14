class HealthBar{
  PVector pos;
  PFont impact;
  float health = 25;
  float drawWidth;
  float maxHealth=50;
  float rectWidth=100;
  int count;
  
  HealthBar(float x, float y){
    pos= new PVector (x,y);
    impact = loadFont("Impact-24.vlw");
  }
  void display (){
    //health bar outline 
    float drawWidth=(health/maxHealth);
    translate (-64,95);
    fill(0);
    rect(0,4,rectWidth,21);
    textFont(impact);
    text("FUEL",+48,2);
    fill(#C6042B);//red
    rect (100,4,-drawWidth,21);
    resetMatrix();
    text("COWS EATEN"+":"+count, 400, 200);
    println(-drawWidth);
  }
  void update (){
    boolean maxFuel = (-drawWidth>-100);
    if (maxFuel){
      drawWidth=100; 
    }
  }
  void count(){
    count+=1;
  }
  void addHealth(){
    health+=10;
  }
  void loseHealth(){
     health-=10;
  }
}
