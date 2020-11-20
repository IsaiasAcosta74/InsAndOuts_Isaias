int ledPins[] = {2,3,4,5,6,7,8,9};

byte val;

const int LED1 = 2;
const int LED2 = 3;
const int LED3 = 4;
const int LED4 = 5;
const int LED5 = 6;
const int LED6 = 7;
const int LED7 = 8;
const int LED8 = 9;



void setup(){

pinMode(LED1,OUTPUT);
pinMode(LED2,OUTPUT);
pinMode(LED3,OUTPUT);
pinMode(LED4,OUTPUT);
pinMode(LED5,OUTPUT);
pinMode(LED6,OUTPUT);
pinMode(LED7,OUTPUT);
pinMode(LED8,OUTPUT);

Serial.begin(9600);
}


void loop(){

  if(Serial.available()){
    val = Serial.read();
  }
  if (val == 0){
    digitalWrite(LED1,LOW);
    digitalWrite(LED2,LOW);
    digitalWrite(LED3,LOW);
    digitalWrite(LED4,LOW);
    digitalWrite(LED5,LOW);
    digitalWrite(LED6,LOW);
    digitalWrite(LED7,LOW);
    digitalWrite(LED8,LOW);
  }
  if (val == 1){
    digitalWrite(LED1,HIGH);
  }
  if (val == 2){
    digitalWrite(LED2,HIGH);
  }
  if (val == 3){
    digitalWrite(LED3,HIGH);
  }
  if (val == 4){
    digitalWrite(LED4,HIGH);
  }
  if (val == 5){
    digitalWrite(LED5,HIGH);
  }
  if (val == 6){
    digitalWrite(LED6,HIGH);
  }
  if (val == 7){
    digitalWrite(LED7,HIGH);
  }
  if (val == 8){
    digitalWrite(LED8,HIGH);
  }
}
