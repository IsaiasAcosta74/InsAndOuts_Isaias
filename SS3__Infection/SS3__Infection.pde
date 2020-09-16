
float r;
float g;
float b;

boolean button = false;
void setup(){
  size(950,950);
  background(190);
  frameRate(30);
}


void draw(){
  r = random(100,255);
  g = random(100,255);
  b = random(0);
  
  int x = 0;
int y = 0;
//while (x < 950) {
//  strokeWeight(3);
//  line(0, x, 950, x);
//  x = x + 50;
//  line(y, 0, y, 950);
//  y = y + 50;
// }
 for(int i=0; i<=width;i+=50){
   strokeWeight(3);
   line(50+i,0,50+i,height);
 }
 for(int i=0; i<=height;i+=50){
   strokeWeight(3);
   line(0,i,height,i);
 }
 if(mousePressed){
  int x1 = int(random(0,950)/100)*100;
  int y1 = int(random(0,950)/50)*50;
  
  int x2 = int(random(0,950)/50)*50;
  int y2 = int(random(0,950)/100)*100;
  
   fill(0,g,b);
   rect(x1+50,y1+50,50,50);
   rect(x1,y1,50,50);
   rect(x2,y2,50,50);
 }else{
  int x1 = int(random(0,950)/100)*100;
  int y1 = int(random(0,950)/50)*50;
  
  int x2 = int(random(0,950)/100)*100;
  int y2 = int(random(0,950)/50)*50;
  
   fill(r,0,b);
   rect(x1+50,y1,50,50);
   rect(x1,y1,50,50);
   rect(x2,y2,50,50);
   
 }   

}
