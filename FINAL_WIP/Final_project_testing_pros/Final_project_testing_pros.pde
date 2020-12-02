import processing.serial.*;
Serial myPort;

int val = 0;
int x;
int y;
int b;




void setup()
{
  size (500,500);
  background(0);
  printArray(Serial.list());
  String portName = Serial.list()[1];
  myPort = new Serial(this, Serial.list()[0], 9600);

}


void draw()
{
  println(mouseX+","+mouseY);
  if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
  }
 println(val);
}
