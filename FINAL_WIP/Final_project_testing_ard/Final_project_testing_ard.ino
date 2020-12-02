const int SW_pin = 2;
const int X_pin = A1;
const int Y_pin = A2;
const int LED1 = 7;


int buttonPin = 8;
int buttonState = 8;
int val = 2;



void setup() 
{
  pinMode(buttonPin,INPUT);
  pinMode(LED1,OUTPUT);
  pinMode(SW_pin, INPUT);
  digitalWrite(SW_pin, HIGH);
  Serial.begin(9600);

}

void loop() 
{
  val = digitalRead(SW_pin);
  Serial.print("Switch:  ");
  Serial.print(digitalRead(SW_pin));
  Serial.print("\n");
  Serial.print("X-axis:  ");
  Serial.print(analogRead(X_pin));
  Serial.print("\n");
  Serial.print("Y-axis:  ");
  Serial.print(analogRead(Y_pin));
  Serial.print("\n\n");
  delay(500);

  buttonState = digitalRead(buttonPin);
  delay(10);

  if(buttonState == HIGH){
    digitalWrite(LED1,LOW);
    delay(1000);
  }else{
    digitalWrite(LED1,HIGH);
  }
  
  Serial.write(val);
}
