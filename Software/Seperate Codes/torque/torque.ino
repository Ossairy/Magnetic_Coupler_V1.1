int a =  0;
float value =0;
int a2 =  0;
float value2 =0;
unsigned long long t =0;
float loops;
float loops2;
int rpm = 0;
int rpm2 = 0;
float maxSpeed =0;
float accelerasion;
void setup() {
Serial.begin(115200);
pinMode(A3,INPUT);
pinMode(29,INPUT);
pinMode(31 ,INPUT);

t = millis();

}

void loop() {

loops = value/18;
loops2 = value2/18;


if(digitalRead(31)!=a  && digitalRead(31)){
value++;
}
if(digitalRead(29)!=a2  && digitalRead(29)){
value2++;
}
a2=digitalRead(29);
a=digitalRead(31);

if(millis() ==  t+1000){
  t = millis();
  rpm = loops*60;
  value=0;
  
   rpm2 = loops2*60;
   value2=0;
    if(rpm>maxSpeed){
     maxSpeed =rpm ;
     accelerasion = maxSpeed/millis();
     accelerasion = accelerasion *1000*2*3.14/60;}
  
  Serial.print(rpm2);
  Serial.print("----------");
  Serial.println(rpm);
  } 



}
