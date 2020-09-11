// Isaias Acosta "random Dancing"
//random squares and when you press 
//on the mouse you leave a trail of random circles


float r;
float g;
float b;
float a;
float x;
float y;






void setup(){
  size(1000,1000);
  background(255);
}

void draw(){
  /*background(255);
  
  if(mouseX > width/2){
    r = r + 255;
    background(r,200,200);
  }else{
    r = r - 255;
  }
  
   if (mouseY > height/2) {
    g = g + 255;
    background(200,g,200);
  }else{
    g = g - 255;
  }
  */
  
  
  r = random(255);
  g = random(255);
  b = random(255);
  x = random(width);
  y = random(height); 
  
  fill(255);
  float w = random(125,800);
  fill (0,g,b);
  stroke(r,g,b);
  strokeWeight(5);
  rect(x,y,20,20);
  
  if (mousePressed){
    fill(r,0,0);
    
    int z = int(random(50,100));
    circle(pmouseX,pmouseY,z);
  }
  
  
  
  
}


  //int m = int(random(500,600));
  //rect(m,m,50,50);
  
