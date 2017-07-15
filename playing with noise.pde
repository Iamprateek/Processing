float valColor = 898 ;
float valSat = 7 ;
float valBri = 17 ;

void setup(){


  size (2000,2000) ;
  background(255) ;
  
  colorMode(HSB , 100,100,100) ;
      
}

void draw(){
   for (int i = 0 ;i<width ; i+=4){
    for (int j  = 0 ; j<height ; j+=4){
      stroke(noise(valColor)*60 ,100,100 ); 
      rect(i , j  ,4,4) ;
      valColor+=0.1 ;
      valSat += 0.02 ;
      valBri += 0.02;
    }
  }
  saveFrame("image-####.png");
}


  