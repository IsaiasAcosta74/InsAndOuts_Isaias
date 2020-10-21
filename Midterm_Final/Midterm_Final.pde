float r;
float g;
float b;

PImage sadCat;
PImage ThumbsUpCat;
PImage happyCat;
PImage arrow;

String state = "start";

void setup(){
  
  textAlign(CENTER);
  
  size(950,950);
  sadCat = loadImage("sadCat.png");
  ThumbsUpCat = loadImage("ThumbsUpCat.jpg");
  happyCat = loadImage("happyCat.jpg");
  arrow = loadImage("arrow.png");
  
    if(state=="start"){
   background(100);
   fill(255);
   rect(225,225,500,500);
   fill(255,0,0);
   textSize(100);
   text("press to",width/2,height/2);
   text("start",width/2,height/2+75);
  }
}


void draw(){
  
  println (mouseX +"," + mouseY);
if(state=="choose"){
    background(100);
    fill(255,0,0);
    text("Left Click to",width/2,200);
    text("Choose a cat",width/2,75,200);
    tint(0,255,0);
    image(ThumbsUpCat,75,575,350,350);
    tint(0,255,255);
    image(happyCat,575,575,350,350);
    tint(255,0,0);
    image(arrow,100,275,300,300);
    image(arrow,600,275,300,300);   
  }else if(state=="choseLeft"){
    Left();
  }else if(state=="choseRight"){
    Right();
  }
  println(state);
}

void mouseClicked(){
  background(100);
    if(mouseX>250 && mouseX<750 && mouseY>250 && mouseY <750){
     state = "choose"; 
    }else if(mouseX>150 && mouseX<350 && mouseY>650 && mouseY<750){
      state ="choseLeft";
    }else if(mouseX>650 && mouseX<850 && mouseY>650 && mouseY<750){
     state ="choseRight"; 
    }
}

void Left(){
  
  fill(0);
   text("press Enter",width/2,height/2);
   rectMode(CENTER);
  r = random(200,255);
  g = random(200,255);
  b = random(0);
  
  //creates the checkerd pattern
 for(int i=0; i<=width;i+=50){
   strokeWeight(3);
   line(50+i,0,50+i,height);
 }
 for(int i=0; i<=height;i+=50){
   strokeWeight(3);
   line(0,i,height,i);
 }
 if(keyCode == ENTER){
   int a = int(random(0,950)/100)*100;
   int b = int(random(0,950)/50)*50;
   int a2 = int(random(0,950)/100)*100;
   int b2 = int(random(0,950)/50)*50;
  
   fill(200);
   rect(width/2,height/2,250,250);
   
   textSize(24);
   fill(0);
   text("green cat released",width/2,height/2);
   
   tint(0,255,0);
   image(ThumbsUpCat,a+50,b,50,50);
   image(ThumbsUpCat,a2,b2,50,50);
 }
}

void Right(){
  
  fill(0);
   text("press Enter",width/2,height/2);
  rectMode(CENTER);
  r = random(200,255);
  g = random(200,255);
  b = random(0);
  
  //creates the checkerd pattern
 for(int i=0; i<=width;i+=50){
   strokeWeight(3);
   line(50+i,0,50+i,height);
 }
 for(int i=0; i<=height;i+=50){
   strokeWeight(3);
   line(0,i,height,i);
   
   if(keyCode== ENTER){
   int a = int(random(0,950)/100)*100;
   int b = int(random(0,950)/50)*50;
   
   int a2 = int(random(0,950)/100)*100;
   int b2 = int(random(0,950)/50)*50;
   
   //draws the rectangle in the center
   fill(200);
   rect(width/2,height/2,250,250);
   
   //draws the text
   textSize(24);
   fill(0);
   text("blue cat released!!",width/2,height/2);
   
   //draws the green cats when mouse is pressed
   tint(0,255,255);
   image(happyCat,a+50,b,50,50);
   image(happyCat,a2,b2,50,50); 
   }
 }
}
