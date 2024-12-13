class HealthBar{
  PVector pos;
  
  HealthBar(float x, float y){
    pos= new PVector (x,y);
  }
  void display (){
    //health bar outline 
    translate (pos.x,pos.y);
    fill(0);
    rect(0,0,150,50);
    text("FUEL",pos.x+75,pos.y-50);
  }
  void update (){
    //boolean shipHit=((dist(lightning().pos.x,clouds[0].lightning().pos.y,
    //                car.pos.x,car.pos.y)<25)||(dist(sunny.birds().pos.x,sunny.birds().pos.y,
    //                car.pos.x,car.pos.y)<25));
    //if (shipHit){
    //  fill(#C6042B);//red
    //  rect (-50,0,150,50);
    //}else{
    //  fill(#C6042B);//red
    //  rect (0,0,150,50);
    //}   
  }

}
