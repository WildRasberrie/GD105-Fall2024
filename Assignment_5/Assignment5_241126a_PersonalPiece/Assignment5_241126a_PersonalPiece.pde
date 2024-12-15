Car car;
Clouds[] clouds;
Clouds[] evilClouds;
Clouds[] lightning;
Cows[] cows;
HealthBar healthBar;
Night night;
Night[] meteors;
Rain[] rain;
Sunny sunny;
Sunny[] birds;
Timer[] timer;
PImage title;
int time=60000;//1 minute timer 
int newTime = 10000;//10 secs timer
int weatherTracker,screen;
float ang1,angle1;

void setup(){
  size (600,600);
  title=loadImage("title.png");
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
  night= new Night(width,height,100);
  meteors= new Night [10];
  for(int l=0;l<meteors.length;l++){
    meteors[0]= new Night(l*200,height/2.0,100.0);
    meteors[1]=new Night(l*200,height-100,100.0);
    meteors[2]=new Night(l*200,height-150,100.0);
    meteors[3]=new Night(l*200,height-150,100.0);
    meteors[4]=new Night(l*200,height-200,100.0);
    meteors[5]=new Night(l*200,height-250,100.0);
    meteors[6]=new Night(l*200,height-350,100.0);
    meteors[7]=new Night(l*250,height/2.0,100.0);
    meteors[8]=new Night(l*250,height-100,100.0);
    meteors[9]=new Night(l*250,height-150,100.0);
    
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

  healthBar.display();
  healthBar.update();
  /******************************************
      START SCREEN
/******************************************/
    if (screen==0){
    startGame();
  }
 /******************************************
      END SCREEN
/******************************************/
  if(screen==2){
    endGame();
  }
/******************************************
      GAME SCREEN
/******************************************/
  if (keyPressed){
    screen=1;
  }
  if (screen == 1){
/****************************************
        WEATHER TRACKER 
/****************************************
    //if(timer[1].isFinished()){
    //  if(weatherTracker < 2){
    //    weatherTracker++;
    //  } else {
    //    weatherTracker = 0;
    //  }
    //  timer[1].start();
    //}
/****************************************
        RAIN DISPLAY
/****************************************/
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
/****************************************
        COLLISIONS 
/****************************************/          
        boolean shipHit=(evilClouds[0].pos.x-100<car.pos.x||car.pos.x<evilClouds[0].pos.x+20);
        if (shipHit){
           car.pos.x=evilClouds[0].pos.x+70;
           noStroke();
           fill(#EDF516,35);
           circle (car.pos.x-150,car.pos.y-75,200);
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
 /****************************************
         SUNNY DISPLAY 
/****************************************/
  if (weatherTracker==1){
    sunny.display();
    sunny.update();
    healthBar.display();
    noStroke();
    for(int g=0;g<birds.length;g++){;
      birds[g].update();
      birds[g].birds();
    }
    for(int i=0;i<cows.length;i++){
      cows[i].display();
      cows[i].update();
   }
  }
 /****************************************
        NIGHT DISPLAY
/****************************************/
  if (weatherTracker==2){
    night.display();
    night.update();
    car.display();
    healthBar.display();

    for(int i=0;i<cows.length;i++){
      cows[i].display();
      cows[i].update();
   }
  }
 healthBar.update();
 }
}
  void startGame(){
    fill(0);
    rect(0,0,width,height);
    pushMatrix();
    scale(0.8);
    image(title,width-600,height-623);
    popMatrix();
    resetMatrix();
    fill(255);
    textSize(30);
    textAlign(CENTER);
    text("Press any key to Start", 300,500);
    textSize(20);
    text("\n\n RULES:\n ENTER = BEAM COWS",300,500);
 
    //SPACESHIP
     ang1=radians(angle1);
     angle1 += 4;
     float floating = sin(ang1);
      fill(#717361);
      strokeWeight(3);
      translate(300,156);
      arc(0,50+floating,115,50,49,150);   
      fill(#0C4C83);
      arc(0,34+floating,68,41,49,150);
   //BEAM
   fill(#ff0000,40);
   stroke(#ff0000);
   strokeWeight(3);          
   triangle(0,74+floating,-229,+597,width-319,height+168); 
   
   //COW
    resetMatrix();
    translate(325,300+floating);
    stroke(#050505);
    scale(0.42);
    rotate(radians(45.0));
    //cow body
    fill(#efeff6);
    ellipse(-20, 89, -4+12, -8+68);
    ellipse(34, 86, 0+8, -8+68);
    ellipse(0, 59, 0+105, -8+70);
    ellipse(-59, 59, -38+105, -8+86);


    //nose & eyes
    fill(#c977d5);
    ellipse(-60, 84, 0+63, -8+55);

    fill(0);
    ellipse(-50, 85, 5, 8);
    ellipse(-70, 85, 5, 8);
    ellipse(-50, 46, 5, 8);
    ellipse(-70, 46, 5, 8);
    //spots
    ellipse(-22, 41, 19, 16);
    ellipse(-15, 47, 21, 11);
    ellipse(37, 51, -21, 12);
    ellipse(34, 60, 23, 12);
    ellipse(0, 72, -21, 12);
    ellipse(-5, 80, 23, 12);

    //cow ears
    fill(#efeff6);
    ellipse(-31, 45, -46+59, -8+43);
 
  }
  void endGame(){
    resetMatrix();
    fill(0);
    rect(0,0,width,height);
    fill(255);
    text("You Lose!", width/2.0,height/2.0);
    noLoop();
}



   
