import java.util.Random ;

Random r= new Random() ;

void setup(){
  size(500,500) ;
  background(255) ;
  
  
}

void draw(){

  float f = (float)r.nextGaussian();
  stroke(255-abs(f)*255 , abs(f)*255);
  //fill(abs(f)*255,255-abs(f)*255);
  noFill();
  ellipse(250 , 250 , abs(f)*500 , abs(f)*500);
  
}