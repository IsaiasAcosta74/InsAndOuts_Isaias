import processing.serial.*;

Serial myPort;

void setup(){
  rectMode(CENTER);
  textAlign(CENTER);
  
  size(1000,1000);
  background(200);
  
  textSize(100);
  fill(0);
  text("click a button",width/2,height/9);
  
  
  printArray(Serial.list());
  String portName = Serial.list()[1];
  myPort = new Serial(this,portName,9600);
  
}


void draw(){
  
  //reset button
  fill(#ff8c00);
  rect(width/2,225,75,75);
  fill(0);
  textSize(20);
  text("reset",width/2,230);
  
  //numbers
  fill(0);
  textSize(100);
  text("1",125,420);
  
  fill(0);
  textSize(100);
  text("2",125,720);
  
  fill(0);
  textSize(100);
  text("3",375,420);
  
  fill(0);
  textSize(100);
  text("4",375,720);
  
  fill(0);
  textSize(100);
  text("5",625,420);
  
  fill(0);
  textSize(100);
  text("6",625,720);
  
  fill(0);
  textSize(100);
  text("7",875,420);
  
  fill(0);
  textSize(100);
  text("8",875,720);
  
  
  // for loop that draws the 8 squares (4 red,4 blue)
  for(int i=0; i<=width; i+=250){
    strokeWeight(5);
    fill(#002bff);
   rect(125+i,height/2,150,150); 
  }
  for(int i=0; i<=width; i+=250){
    strokeWeight(5);
    fill(#ff0016);
   rect(125+i,800,150,150); 
  }
  
  
  println (mouseX +"," + mouseY);
}


void mouseClicked(){
  
  if(mouseX>460 && mouseX<535 && mouseY>190 && mouseY<250){
    myPort.write(0);
    println("0");
  }
  if(mouseX>50 && mouseX<200 && mouseY>425 && mouseY<575){
    myPort.write(1);
    println("1");
  }
  if(mouseX>50 && mouseX<200 && mouseY>725 && mouseY<825){
    myPort.write(2);
    println("2");
  }
  if(mouseX>300 && mouseX<450 && mouseY>425 && mouseY<575){
    myPort.write(3);
    println("3");
  }
  if(mouseX>300 && mouseX<450 && mouseY>725 && mouseY<875){
    myPort.write(4);
    println("4");
  }
  if(mouseX>550 && mouseX<700 && mouseY>425 && mouseY<575){
    myPort.write(5);
    println("5");
  }
  if(mouseX>550 && mouseX<700 && mouseY>725 && mouseY<875){
    myPort.write(6);
    println("6");
  }
  if(mouseX>800 && mouseX<950 && mouseY>425 && mouseY<575){
    myPort.write(7);
    println("7");
  }
  if(mouseX>800 && mouseX<950 && mouseY>725 && mouseY<875){
    myPort.write(8);
    println("8");
  }
}
