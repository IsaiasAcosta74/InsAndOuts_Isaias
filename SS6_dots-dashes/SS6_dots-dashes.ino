//isaias acosta, SS6 dots and dashes

int buttonPin = 12;
int LED1 = 2;
int LED2 = 3;
int LED3 = 4;
int LED4 = 5;

int buttonState = 12;

void setup() {
pinMode(LED1,OUTPUT);


pinMode(buttonPin, INPUT);


}

void loop() {

buttonState = digitalRead(buttonPin);
delay(10);

//-----------------------
//3 blue LEDS

digitalWrite(LED2, HIGH);
delay(100);
digitalWrite(LED2, LOW);
delay(100);

digitalWrite(LED3, HIGH);
delay(100);
digitalWrite(LED3, LOW);
delay(100);

digitalWrite(LED4, HIGH);
delay(100);
digitalWrite(LED4, LOW);
delay(100);

digitalWrite(LED2, HIGH);
digitalWrite(LED3, HIGH);
digitalWrite(LED4, HIGH);
delay(300);
digitalWrite(LED2, LOW);
digitalWrite(LED3, LOW);
digitalWrite(LED4, LOW);

//-----------------------

if(buttonState == HIGH){
  //dot
  digitalWrite(LED1,HIGH);
  delay(150);
  digitalWrite(LED1,LOW);
  delay(150);
  //dot
  digitalWrite(LED1,HIGH);
  delay(150);
  digitalWrite(LED1,LOW);
  delay(1500);

//------------------------
  //dot
  digitalWrite(LED1,HIGH);
  delay(150);
  digitalWrite(LED1,LOW);
  delay(200);
  
  //dot
  digitalWrite(LED1,HIGH);
  delay(150);
  digitalWrite(LED1,LOW);
  delay(200);
  //dash
  digitalWrite(LED1,HIGH);
  delay(750);
  digitalWrite(LED1,LOW);
  delay(300);
  
  //dash
  digitalWrite(LED1,HIGH);
  delay(750);
  digitalWrite(LED1,LOW);
  delay(1500);

  //------------------------

  //dot
  digitalWrite(LED1,HIGH);
  delay(200);
  digitalWrite(LED1,LOW);
  delay(200);
  //dash
  digitalWrite(LED1,HIGH);
  delay(750);
  digitalWrite(LED1,LOW);
  delay(300);

  //dot
  digitalWrite(LED1,HIGH);
  delay(150);
  digitalWrite(LED1,LOW);
  delay(150);  
  //dot
  digitalWrite(LED1,HIGH);
  delay(150);
  digitalWrite(LED1,LOW);
  delay(150);  
  //dot
  digitalWrite(LED1,HIGH);
  delay(200);
  digitalWrite(LED1,LOW);
  delay(400);

  //dot
  digitalWrite(LED1,HIGH);
  delay(150);
  digitalWrite(LED1,LOW);
  delay(150);  
  //dot
  digitalWrite(LED1,HIGH);
  delay(150);
  digitalWrite(LED1,LOW);
  delay(150);  
  //dot
  digitalWrite(LED1,HIGH);
  delay(150);
  digitalWrite(LED1,LOW);
  delay(150);
  
}else{
  digitalWrite(LED1,LOW);
}



}
