import processing.serial.*;
Serial myPort;

int val = 0;
int val_X = 0;
int val_Y = 0;
;




void setup()
{
  size (500,500);
  background(0);
  
  printArray(Serial.list());
  String portName = Serial.list()[1];
  myPort = new Serial(this, portName, 9600);

}


void draw(){
  println(mouseX+","+mouseY);
  
  if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
    val_X = myPort.read();
    val_Y = myPort.read();
    
    background(0);
    fill(255);
    ellipse(val_X+20,val_Y+20,20,20);
  }

  
  
  
  
 println("switch  " + val);
 println("X_axis  " + val_X);
 println("Y_axis  " + val_Y);
 
}

void serialEvent(Serial port)
{
   // read the data until the newline n appears
  val = myPort.readStringUntil('\n');
  
  if (val != null)
  {
        val = trim(val);
        
    // break up the decimal and new line reading
    int[] vals = int(splitTokens(val, ","));
    
    // we assign to variables
    x = vals[0];
    y = vals[1] ;
    b = vals[2];

  }
}
