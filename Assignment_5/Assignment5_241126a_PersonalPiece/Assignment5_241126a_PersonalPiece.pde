Car car;
Clouds[] clouds;
Clouds[] evilClouds;
Cows[] cows;
Rain[] rain;
Sunny sunny;
HealthBar healthBar;
Timer[] timer;
int time=60000;//1 minute timer 
int newTime = 10000;//10 secs timer

void setup(){
  size (600,600);
  sunny = new Sunny (width,height,100);
  car = new Car (width,height/2.0);
  timer= new Timer[4];
  for (int h=0;h<timer.length;h++){
    timer[0]= new Timer(newTime);//10 secs in millis 
    timer[1]= new Timer(time);//1 minute timer in millis 
   }
  timer[0].start();
  timer[1].start();
    cows= new Cows[20];
  for(int i=0;i<cows.length;i++){
      cows[1] = new Cows (width/1.5,height/1.2,0.47);
      cows[1]=new Cows (width/1.0,height/1.0,0.47);
      cows[2]=new Cows (width/1.75,height/1.0,0.47);
      cows[3]=new Cows (width/2.5,height/1.4,0.47);
      cows[4]=new Cows (width/3.0,height/1.2,0.47);
      cows[5]=new Cows (width/3.5,height/0.5,0.47);
      cows[6]=new Cows (width/1.0,height/1.4,0.47);
      cows[7]=new Cows (width/3.0,height/1.2,0.47);
      cows[8]=new Cows (width/1.75,height/1.4,0.47);
      cows[9]=new Cows (width/5.0,height/0.5,0.47);
      cows[i]=new Cows (width/0.5,height/1.2,0.47);
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
  evilClouds= new Clouds[2];
  for(int k=0;k<evilClouds.length;k++){
    evilClouds[0]=new Clouds(k*200,height/6.0,100.0);
    evilClouds[1]=new Clouds(random(width),height/6.0,100.0);
  }
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
  
  car.display();
  car.update();
  for(int i=0;i<cows.length;i++){
      cows[i].display();
      cows[i].update();
  }
  if (time<=60000){
  for(int j=0;j<rain.length;j++){
    rain[j].display();
    rain[j].update();
  }
  
  for(int k=0;k<clouds.length;k++){
    clouds[k].display();
    clouds[k].update();
    evilClouds[0].update();
    evilClouds[0].evilCloud();
    if(timer[0].isFinished()){
      clouds[0].lightning();
      evilClouds[0].evilCloud();
      newTime -= 50;
      if(newTime < 0){
        timer[0].start();
        newTime = 10000;
      }
    }
    if (timer[1].isFinished()){
      noLoop();
      redraw();
      timer[1].start();
      time-=100;
    }
    if(time<0){
      time =60000;
      timer[1].start();
    }
   } 
  }
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

void redraw (){
    sunny.display();
    sunny.update();
    car.display();
    car.update();
}

   
