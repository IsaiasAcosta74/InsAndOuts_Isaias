

import processing.serial.*; 

Serial myPort; 
int val=0; 

void setup() {
  background(255);
  size(800, 800);
  rectMode(CENTER);
  textAlign(CENTER);

  printArray(Serial.list()); 
  String portName = Serial.list()[1]; 
  myPort = new Serial(this, portName, 9600);
  
  //rect around text
  fill(255);
  strokeWeight(10);
  stroke(100);
  rect(width/2,75,300,100);
  
  //filling text
  textSize(75);
  fill(#29ff00);
  text("filling...",width/2,height/8);
  
  //black rect border
  fill(0);
  strokeWeight(0);
  rect(width/2,height/1.6,100,600);
  
  //grey rect
  fill(200);
  strokeWeight(0);
  rect(width/2,height/1.6,75,575);
  
}

void draw() {
  println(mouseX+","+mouseY);
  fill(0);
  
  if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
  }
  
  if (val>=50){
    fill (#2fd054);
    rect(width/2,765,75,50);
  }
  
  if (val>=75){
    fill (#2fd054);
    rect(width/2,715,75,150);
  }
    
  if (val>=100){
    fill (#2fd054);
    rect(width/2,665,75,200);
  }
  
  if (val>=125){
    fill (#2fd054);
    rect(width/2,615,75,200);
  }
  
  if (val>=150){
    fill (#2fd054);
    rect(width/2,565,75,200);
  }
  
  if (val>=175){
    fill (#2fd054);
    rect(width/2,515,75,200);
  }
  
  if (val>=200){
    fill (#2fd054);
    rect(width/2,465,75,200);
  }
  
  if (val>=225){
    fill (#2fd054);
    rect(width/2,400,75,200);
  }
  
  if (val>=255){
    fill (#2fd054);
    rect(width/2,310,75,200);
    
    //rect around text
  fill(255);
  //strokeWeight(10);
  stroke(100);
  rect(width/2,75,300,100);
  
  //filling text
  textSize(75);
  fill(#29ff00);
  text("Filled!!!",width/2,height/8);
    
  }
    
    
    
    
    
    
    
  println (val); //prints to Processing console
}
