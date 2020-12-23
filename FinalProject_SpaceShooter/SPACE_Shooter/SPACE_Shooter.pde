import processing.serial.*;
Serial myPort;
PImage rock;
PImage bg;
PImage ship;
int val = 0;
int posX = 10;
Ship playerShip;
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
int asteroidFrequency = 60;

int points;
EndScene end;

void setup() {
  size(1000, 1000);
  playerShip = new Ship();
  points = 0;  
  rock = loadImage("rock.png");
  bg = loadImage("space.png");
  ship = loadImage("spaceShip.png");
  printArray(Serial.list());
  String portName = Serial.list()[1];
  myPort = new Serial(this, portName, 9600);
}

void draw() {
  println(mouseX+","+mouseY);
  println("val " + val);
  if (end != null) {
    end.drawEndScene();
  } else { 
    background(bg);
    drawAsteroid();
    fill(255, 0, 0);
    stroke(255);
    playerShip.drawShip();
    stroke(255);
    fill(255);
    textSize(30);
    text("Points: " + points, 50, 50);
    checkCollision();
    
  }
}

void checkCollision() {
  for (int i = 0; i < asteroids.size(); i++) {
    Asteroid a = asteroids.get(i);
    if (a.checkCollision(playerShip) == true) {
      end = new EndScene(points);
    }
  }
}


void drawAsteroid() {
  if (frameCount % asteroidFrequency == 0) {
    asteroids.add(new Asteroid(random(150, 250)));
  }
  for (int i = 0; i<asteroids.size(); i++) {
    Asteroid currentAsteroid = asteroids.get(i);
    currentAsteroid.drawAsteroid();
    if (currentAsteroid.y > height + currentAsteroid.size) {
      asteroids.remove(currentAsteroid);
      i--;
      points--;
    }
  }
}




void mousePressed() {
  if (end != null && end.mouseOverButton() == true) {
    resetGame();
  }
}

void resetGame() {
  asteroids.clear();
  playerShip = new Ship();
  end = null;
  points = 0;
}
class Asteroid {
  float size, x, y;

  int vy = 5; //speed of asteroid

  Asteroid(float size) {
    this.size = size;
    this.x = random(width);
    this.y = -size;
  }
  void drawAsteroid() {
    fill(150);
    stroke(150);
    image(rock,x, y, size, size);
    y+=vy;
  }
  boolean checkCollision(Object other) {
    if (other instanceof Ship) {
      Ship playerShip = (Ship) other;
      float apothem = 10 * tan(60);

 
    }
    return false;
  }
}

class EndScene {
  String gameOverText, buttonText, pointsText;
  int buttonX, buttonY, buttonW, buttonH;
  EndScene(int points) {
    this.gameOverText = "Game Over!";
    this.buttonText = "Retry";
    this.pointsText = "Your final Score is " + points;
    this.buttonW = 200;
    this.buttonH = 100;
    this.buttonX = width/2 - this.buttonW/2;
    this.buttonY = height/2 - this.buttonH/2;
  }
  void drawEndScene() {
    //OVERLAY
    fill(#F73939);
    rect(0, 0, width, height);
    rect(buttonX, buttonY, buttonW, buttonH);

    //TEXT
    stroke(255);
    fill(255);
    textSize(60);
    text(this.gameOverText, width/3, height/4);

    //BUTTON
    fill(0);
    stroke(200);
    rect(buttonX, buttonY, buttonW, buttonH);
    fill(200);
    text(buttonText, buttonX+25, buttonY+70);
    
    //SCORE
    stroke(255);
    fill(255);
    textSize(30);
    text(pointsText, width/3, height - height/4);
  }

  boolean mouseOverButton() {
    return (mouseX > buttonX 
      && mouseX < buttonX + buttonW
      && mouseY > buttonY
      && mouseY < buttonY + buttonH);
  }
}
class Ship {
  void drawShip() {
    if(myPort.available() >0){
      val = myPort.read();
    }  
    fill(255);
    image(ship,posX+val*(3.6),900,75,75);
  }
}
