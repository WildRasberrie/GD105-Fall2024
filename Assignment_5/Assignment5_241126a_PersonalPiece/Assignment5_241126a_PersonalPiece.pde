Car car;
Clouds[] clouds;
Clouds[] evilClouds;
Cows[] cows;
Rain[] rain;
Timer timer;
int time;
int newTime = 10000;

void setup(){
  size (600,600); 
  car = new Car (width,height/2.0);
  timer= new Timer(newTime); //10 secs in millis 
  timer.start();
  rain= new Rain[10];
  for(int j=0;j<rain.length;j++){
    rain[0]= new Rain (random(width), random(height),20);
    rain[1]= new Rain (random(width), random(height/2.0),20);
    rain[2]= new Rain (random(width), random(height/1.5),20);
    rain[3]= new Rain (random(width), random(height/1.2),20);
    rain[4]= new Rain (random(width), random(height/3.0),20); 
    rain[j]=new Rain (random(width),random(height/3.5),20);
  }
  cows= new Cows[10];
  for(int i=0;i<cows.length;i++){
      cows[0] = new Cows (width/1.5,height/1.2,0.47);
      cows[1]=new Cows (width/1.0,height/1.2,0.47);
      cows[2]=new Cows (width/2.0,height/1.0,0.47);
      cows[3]=new Cows (width/2.5,height/1.0,0.47);
      cows[4]=new Cows (width/3.0,height/1.2,0.47);
      cows[5]=new Cows (width/3.5,height/1.0,0.47);
      cows[6]=new Cows (width/3.5,height/1.5,0.47);
      cows[7]=new Cows (width/4.0,height/1.5,0.47);
      cows[8]=new Cows (width/4.5,height/1.2,0.47);
      cows[9]=new Cows (width/5.0,height/1.0,0.47);  
  }
  clouds= new Clouds[3];
  for(int k=0;k<clouds.length;k++){
    clouds[k]=new Clouds(k*200,height/6.0,100.0);
  }
  evilClouds= new Clouds[1];
  for(int k=0;k<evilClouds.length;k++){
    evilClouds[k]=new Clouds(k*200,height/6.0,100.0);
  }

}
  
void draw(){

  background (180);
  
  //Draw Grass 
  fill(#2D8647);
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
  for(int j=0;j<rain.length;j++){
    rain[j].display();
    rain[j].update();
  }
  
  for(int k=0;k<clouds.length;k++){
    clouds[k].display();
    clouds[k].update();
    evilClouds[0].update();
    if(timer.isFinished()){
      evilClouds[0].evilCloud();
      newTime -= 10;
      if(newTime < 0){
        timer.start();
        newTime = 3000;
      }
      //timer.start();
      }
    }
    
   boolean distBtwnEvil =(dist(car.pos.x,car.pos.y,evilClouds[0].pos.x,evilClouds[0].pos.y)<140);
    if(distBtwnEvil){
      endGame();
    }

}
  
  void endGame(){
    resetMatrix();
    fill(0);
    rect(0,0,width,height);
    fill(255);
    text("You Lose!", width/2.0,height/2.0);
}
   
