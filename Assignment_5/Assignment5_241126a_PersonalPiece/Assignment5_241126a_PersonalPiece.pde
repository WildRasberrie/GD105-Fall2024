Car car;
Clouds[] clouds;
Clouds[] evilClouds;
Clouds[] lightning;
Cows[] cows;
HealthBar healthBar;
Rain[] rain;
Sunny sunny;
Sunny[] birds;
Timer[] timer;
int time=60000;//1 minute timer 
int newTime = 10000;//10 secs timer
int weatherTracker;

void setup(){
  size (600,600);
  sunny = new Sunny (width,height,100);
  birds= new Sunny[10];
  for(int g=0;g<birds.length;g++){
    birds[g]=new Sunny(width/2.0,height/2.0,50.0);
  }
  car = new Car (width,height/2.0);
  timer= new Timer[4];
  healthBar= new HealthBar(width,height);
  for (int h=0;h<timer.length;h++){
    timer[0]= new Timer(newTime);//10 secs in millis 
    timer[1]= new Timer(time);//1 minute timer in millis 
   }
  timer[0].start();
  timer[1].start();
    cows= new Cows[20];
  for(int i=0;i<cows.length;i++){
      cows[0] = new Cows (width/1.5,height/1.2,0.47);
      cows[1]=new Cows (width/1.0,height/1.0,0.47);
      cows[2]=new Cows (width/1.75,height/1.0,0.47);
      cows[3]=new Cows (width/2.5,height/1.4,0.47);
      cows[4]=new Cows (width/3.0+100,height/1.2,0.47);
      cows[5]=new Cows (width/3.5,height/0.5-100,0.47);
      cows[6]=new Cows (width/1.0,height/1.4,0.47);
      cows[7]=new Cows (width/3.0-100,height/1.2,0.47);
      cows[8]=new Cows (width/1.75,height/1.4,0.47);
      cows[9]=new Cows (width/5.0,height/0.5-100,0.47);
      cows[10]=new Cows (width/0.5,height/1.2,0.47);
      cows[11] = new Cows (width/1.5+100,height/1.2,0.47);
      cows[12]=new Cows (width/1.0+100,height/1.0,0.47);
      cows[13]=new Cows (width/1.75+100,height/1.0,0.47);
      cows[14]=new Cows (width/2.5+100,height/1.4,0.47);
      cows[15]=new Cows (width/3.0+100,height/1.2,0.47);
      cows[16]=new Cows (width/3.5+100,height/0.5-100,0.47);
      cows[17]=new Cows (width/1.0+100,height/1.4,0.47);
      cows[18]=new Cows (width/3.0+100,height/1.2,0.47);
      cows[19]=new Cows (width/1.75+100,height/1.4,0.47);
      
  }
  rain= new Rain[10];
  for(int j=0;j<rain.length;j++){
    rain[0]= new Rain (random(width), random(height),20);
    rain[1]= new Rain (random(width), random(height/2.0),20);
    rain[2]= new Rain (random(width), random(height/1.5),20);
    rain[3]= new Rain (random(width), random(height/1.2),20);
    rain[4]= new Rain (random(width), random(height/3.0),20); 
    rain[j]= new Rain (random(width),random(height/3.5),20);
  }
  clouds= new Clouds[3];
  for(int k=0;k<clouds.length;k++){
    clouds[k]=new Clouds(k*210,height/6.0,100.0);
  }
  evilClouds= new Clouds[1];
  for(int k=0;k<evilClouds.length;k++){
    evilClouds[0]=new Clouds(k*200,height/6.0,100.0);
  }
  //count=count();
}
  
void draw(){

  background (180);
  
  //Draw Grass 
  fill(#2D8647);
  noStroke();
  rect(0,height-150, width, height);
 

  //Draw visual boarder
  //stroke(0);
  //fill(0);
  //strokeWeight(10);
  //line(0,5,width,5);
  //line(0,height/2,width,height/2);
  //line(5,0,5,height/2);
  //line(width-5,0,width-5,height/2);
  if(timer[1].isFinished()){
    if(weatherTracker < 2){
      weatherTracker++;
    } else {
      weatherTracker = 0;
    }
    timer[1].start();
  }
 //Set Up Rain Display - 1 Min
   if (weatherTracker ==0){
    for(int i=0;i<cows.length;i++){
        cows[i].display();
        cows[i].update();
    }
    for(int j=0;j<rain.length;j++){
      rain[j].display();
      rain[j].update();
    }
    
    for(int k=0;k<clouds.length;k++){
      clouds[k].display();
      clouds[k].update();
      evilClouds[0].update();
      if(timer[0].isFinished()){
      evilClouds[0].evilCloud();
      pushMatrix();
      strokeWeight(2);
      
      
      boolean shipHit=(evilClouds[0].pos.x+40<car.pos.x&&car.pos.x<evilClouds[0].pos.x+50);
      if (shipHit){
         car.pos.x=evilClouds[0].pos.x+40;
         noStroke();
         fill(#EDF516,35);
         circle (car.pos.x-200,car.pos.y-75,200);
         healthBar.loseHealth();
        }
        popMatrix();
        resetMatrix();
        newTime -= 50;
        if(newTime < 0){
          timer[0].start();
          newTime = 10000;
        }
      }
    }
  }
  if (weatherTracker==1){
    background(#29B3E3);
    sunny.display();
    sunny.update();
    clouds[0].display();
    clouds[0].update();
    clouds[1].display();
    clouds[1].update();
    for(int g=0;g<birds.length;g++){;
      birds[g].update();
      birds[g].birds();
    }
    for(int i=0;i<cows.length;i++){
      cows[i].display();
      cows[i].update();
   }
   noLoop();
  }
  resetMatrix();
  car.display();
  car.update();
  healthBar.display();
  healthBar.update();
}
  void startGame(){
    fill(0);
    rect(0,0,width,height);
    fill(255);
    text("Start Game\n", 100,200);
  }
  void endGame(){
    resetMatrix();
    fill(0);
    rect(0,0,width,height);
    fill(255);
    text("You Lose!", width/2.0,height/2.0);
}



   
