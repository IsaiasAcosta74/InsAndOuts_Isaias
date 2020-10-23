//isaias acosta, SS6 dots and dashes

int buttonPin = 2;
int LED1 = 12;

int buttonState = 2;

void setup() {
pinMode(LED1,OUTPUT);


pinMode(buttonPin, INPUT);


}

void loop() {

buttonState = digitalRead(buttonPin);
delay(10);

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
