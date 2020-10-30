int ledPins[] = {2,3,4,5,6,7,8,9};
int ledBlue[] = {2,4,6,8};
int ledRed[] = {3,5,7,9};

int buttonPin = 12;
int buttonState = 12;




void setup() {
int index;

pinMode(buttonPin, INPUT);

for(index = 0; index <= 7; index++)
  {
    pinMode(ledPins[index],OUTPUT);
  }
}



void loop() {
  int index;
  buttonState = digitalRead(buttonPin);
  delay(10);
//  blueDots();

  if(buttonState == HIGH){
    RedLED();
  }else if(buttonState == LOW){
    BlueLED();
  }
  
}



void RedLED(){
  int index;
  int delayTime = 300;
  for(index = 3; index >=0; index--)
  {
    digitalWrite(ledRed[index],HIGH);
    delay(delayTime);
    digitalWrite(ledRed[index],LOW);
    delay(delayTime);
    digitalWrite(ledRed[index],HIGH);
    delay(delayTime);
    digitalWrite(ledRed[index],LOW);
  }
}

void BlueLED(){
int index;
int delayTime = 300;
    for(index = 0; index <=3; index++)
  {
    digitalWrite(ledBlue[0],HIGH);
    delay(delayTime);
    digitalWrite(ledBlue[0],LOW);
    delay(delayTime);
    digitalWrite(ledBlue[0],HIGH);
    delay(delayTime);
    digitalWrite(ledBlue[0],LOW);
    delay(delayTime);
    digitalWrite(ledBlue[3],HIGH);
    delay(delayTime);
    digitalWrite(ledBlue[3],LOW);
    delay(delayTime);
    digitalWrite(ledBlue[2],HIGH);
    delay(delayTime);
    digitalWrite(ledBlue[2],LOW);
    delay(delayTime);
  }
}
