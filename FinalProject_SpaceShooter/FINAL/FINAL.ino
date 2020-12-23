const int SENSOR = A0;
int val = 0;
int buttonPin = 2;
int buttonState = 2;
int LED = 4;






void setup() {
  pinMode(LED,OUTPUT);
  pinMode(buttonPin, INPUT);
  pinMode (SENSOR, INPUT);
  Serial.begin(9600);

}

void loop() {
val = analogRead(SENSOR);
val = val/4;
delay(50);



buttonState = digitalRead(buttonPin);
if(buttonState == HIGH){
    digitalWrite(LED,HIGH);
    //Serial.println("HIGH");
  }else{
    digitalWrite(LED,LOW);
    //Serial.println("LOW");
}



//Serial.write(buttonPress);
Serial.write(val);

}
