float r;
float g;
float b;

PImage sadCat;
PImage ThumbsUpCat;
PImage happyCat;
PImage arrow;


void setup(){
  size(1000,1000);
  rectMode(CENTER);
  textAlign(CENTER);
  imageMode(CENTER);
  
  println(mouseX +"," + mouseY);
  fill(255);
  rect(width/2,height/2,500,500);
  fill(255,0,0);
  textSize(100);
  text("press to",width/2,height/2);
  text("start",width/2,height/2+75);
  
  sadCat = loadImage("sadCat.png");
  ThumbsUpCat = loadImage("ThumbsUpCat.jpg");
  happyCat = loadImage("happyCat.jpg");
  arrow = loadImage("arrow.png");
}


void draw(){
println (mouseX +"," + mouseY);
}


void mouseClicked(){
  background(100);
    if(mouseX>250 && mouseX<750 && mouseY>250 && mouseY <750){
     select(); 
    }
    
  }

void select(){
  background(100);
  
  text("choose a cat",width/2,200);
  
  tint(0,255,0);
  image(ThumbsUpCat,250,750,350,350);
  tint(0,255,255);
  image(happyCat,750,750,350,350);
  tint(255,0,0);
  image(arrow,250,400,300,300);
  image(arrow,750,400,300,300);
  
}

void catSelect(){
  if (mousePressed){
    if(mouseX>100 && mouseX<350 && mouseY>575 && mouseY <800)
    leftCat();
    }
}

void leftCat(){
  background(255);
  rect(width/2,height/2,500,500);
}
