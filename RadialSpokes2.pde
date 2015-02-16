void setup(){
  size(500,500);
  background(0,0,0);
}

  float x = 0.5;
  float r = 0;
  float comp = 10;
  float mx = 0;
  float mx2 = 500;
  

void draw(){
 
 if (mousePressed){
   r = r + x;
   mx = mx + 1;
   mx2 = mx2 - 1;
   stroke(255,255,255);
   point(mx + r, mx + r);
   point(mx - r, mx - r);
   point(mx + r, mx - r);
   point(mx - r, mx + r);
   point(mx, mx + r);
   point(mx, mx - r);
   point(mx + r, mx);
   point(mx - r, mx);  
   
   point(mx2 + r, mx + r);
   point(mx2 - r, mx - r);
   point(mx2 + r, mx - r);
   point(mx2 - r, mx + r);
   point(mx2, mx + r);
   point(mx2, mx - r);
   point(mx2 + r, mx);
   point(mx2 - r, mx);  
   
   if (r / comp >= 1){
     x = x + 0.5;
     comp = comp + 10;
   }
   
  }
 
 else {
  r = 0;
  x = 1;
  comp = 10;
}

}

//void keyPressed(){
//  if (key == ' '){
//    background(255,255,255);
//  }
//}


void keyPressed(){
  if (key == 's'){
    saveFrame("####.png");
  }
}

