float power;
void setup() {
  Serial.begin(9600);
}

void loop() {
measurepower();
}



float measurepower(){

unsigned int x=0;
float AcsValue=0.0,Samples=0.0,AvgAcs=0.0,current=0.0;
//analogWrite(6,1023s);
  for (int x = 0; x < 150; x++){ 
  AcsValue = analogRead(A0);        
  Samples = Samples + AcsValue;  
  delay (3); 
}
AvgAcs=Samples/150.0;
current = (2.5 - (AvgAcs * (5.0 / 1024.0)) )/0.066;
power = current/1000*9;
Serial.println(current);
Serial.println(power);
delay(50);
  return power;
}
