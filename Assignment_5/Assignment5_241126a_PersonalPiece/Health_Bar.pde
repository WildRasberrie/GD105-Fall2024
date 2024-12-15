class HealthBar{
  PVector pos;
  PFont impact;
  float health =1.0;
  float drawWidth=max(0,100);
  float maxHealth=100.0;
  float minHealth=0.0;
  float rectWidth=100.0;
  int count;
  float ang1,angle1;
  float y;
  
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
    fill(0);
    text("FUEL AVAILABLE"+":"+int(drawWidth)+"%",400,150);
    //println("health:"+health+" max Health: "+maxHealth+"DrawWidth:"+drawWidth);
  }
  void update(){
    if (health >10000){//if at 100% health
      health=10000;
    }
    if(health<1){//if at 0% heallth
      health=0;
    }
    if (health<25000){//less than quarter health
     angle1 += 2.0;
     ang1=radians(angle1);
     y= (pos.y+sin(ang1));
     fill(80,100);
     circle(car.pos.x+106,car.pos.y+y,86);
    }
    if(health==0.0){//if health 0%
      car.fallingShip();
      screen=2;
    }
    
  }
  
  void count(){
    count++;
  }
  void addHealth(){
    health+=1000;
  }
  void loseHealth(){
     health-=30;
  }
}
