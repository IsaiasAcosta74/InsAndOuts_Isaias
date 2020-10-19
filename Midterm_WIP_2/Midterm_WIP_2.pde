float r;
float g;
float b;

PImage sadCat;
PImage ThumbsUpCat;
PImage happyCat;
PImage arrow;

String state = "start";

void setup(){
  rectMode(CENTER);
  textAlign(CENTER);
  imageMode(CENTER);
  size(1000,1000);
  sadCat = loadImage("sadCat.png");
  ThumbsUpCat = loadImage("ThumbsUpCat.jpg");
  happyCat = loadImage("happyCat.jpg");
  arrow = loadImage("arrow.png");
  
    if(state=="start"){
   background(100);
   fill(255);
   rect(width/2,height/2,500,500);
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
    text("Choose a cat",width/2,200);
    tint(0,255,0);
    image(ThumbsUpCat,250,750,350,350);
    tint(0,255,255);
    image(happyCat,750,750,350,350);
    tint(255,0,0);
    image(arrow,250,400,300,300);
    image(arrow,750,400,300,300);   
  }else if(state=="choseLeft"){
    fill(255,255,0);
    rect(width/2,height/2,500,500);
  }
  println(state);
}


//void select(){
//  background(100);
  
//  text("choose a cat",width/2,200);
  
//  tint(0,255,0);
//  //image(ThumbsUpCat,250,750,350,350);
//  tint(0,255,255);
//  image(happyCat,750,750,350,350);
//  tint(255,0,0);
//  image(arrow,250,400,300,300);
//  image(arrow,750,400,300,300);
  
//}

void mouseClicked(){
  background(100);
    if(mouseX>250 && mouseX<750 && mouseY>250 && mouseY <750){
     state = "choose"; 
    }else if(mouseX>100 && mouseX<350 && mouseY>575 && mouseY<800){
      state ="choseLeft";
    }
}
