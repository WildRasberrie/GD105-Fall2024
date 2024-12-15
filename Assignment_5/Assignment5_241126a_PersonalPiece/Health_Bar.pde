class HealthBar{
  PVector pos;
  PFont impact;
  float health =0.0;
  float drawWidth=max(0,100);
  float maxHealth=100.0;
  float minHealth=0.0;
  float rectWidth=100.0;
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
    println("health:"+health+" max Health: "+maxHealth+"DrawWidth:"+drawWidth);
  }
  void update (){
    boolean fullHealth=(drawWidth>100.0);
    boolean noHealth= (drawWidth<0.0);
    boolean healthGrowth=(drawWidth>100);
    boolean healthLoss=(drawWidth<100);
    if (healthGrowth){
      addHealth();
    }

    if (fullHealth){
      drawWidth=maxHealth;
      health-=500;
    }
    if (noHealth){
      drawWidth=minHealth;
      fill(70,25);
      for (int i=0;i<4;i++){
        circle(pos.x+100,pos.y,100);
      }
    }
  }
  void count(){
    count++;
  }
  void addHealth(){
    health+=1000;
  }
  void loseHealth(){
     health-=2000;
  }
}
