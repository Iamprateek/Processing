float r , g, b ;
float sh = 100 ;
  float sw =100;
float rds =100 ;
color c1 ,c2 ;
boolean ex ;

void setup(){

  size(800,800) ;
  
  r= random(255) ;
  g= random(155)+100 ;
  b= random(155) +100;
  
  colorMode(HSB , 255,255,255) ;
  rectMode(CENTER) ;
 
 c1 = color(noise(r)*255,noise(g)*255,noise(b)*255) ;
 c2 = color(noise(r+1)*255,noise(g+1)*255,noise(b+1)*255) ;
 
 ex = false ;
 }

void draw(){
  fill(c1) ;
  background(c2) ;
  r+=0.1;
  g+=0.1 ;
  b+=0.1;
 
  //int x ,y ;
  
  noStroke() ;
  
  
  for (int x  = 0 ; x < width ; x+=100){
    for (int y = 0 ; y <height ; y+=100){
      
      rect((x)+sw/2 , y+sh/2 , rds,rds);
    }
  }
  rds -- ;
  if(rds<1){
    rds = 100;
    c1= c2 ;
    c2 =  color(noise(r+1)*255,noise(g+1)*255,noise(b+1)*255) ;
  

}

}