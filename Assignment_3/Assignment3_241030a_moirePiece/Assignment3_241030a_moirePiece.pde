void setup () {
  size(600, 600);
  noSmooth();//no aliasing  
  noLoop();//noLoop in setup so loop draw code is only run once
          //REF:processing.org
}

void draw () {
  background (255);
  stroke(pickColor());
  
  
   float n=333.0;//set loop to run 333 times
    for(int i = 0;i<n;i++){
      line(width,i/n*height,0,i/n*height);
    }
   for (int i=0;i<n;i++){
     line(600,i/n*570,0,i/n*570);
   }
  if(frameCount==1);
    save("output_aMoirePiece.png");
}
 //have random blue every time program runs
 color pickColor(){
   int r,g,b,a;
   r=floor(random(50,150));
   g=floor(random(85,160));
   b=floor(random(180,255));
   a=255;
   
 color c= color(r,g,b,a);
 return c;
 }
