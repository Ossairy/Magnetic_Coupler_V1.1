int a =  0;
float value =0;
int avgRpm ;
int count=0;
unsigned long long t =0;
float loops;
int rpm = 0;
int b [30] ;
float maxSpeed =0;
float minSpeed=0;
float accelerasion;
void setup() {
Serial.begin(115200);
pinMode(A3,INPUT);
pinMode(31,INPUT);
pinMode(29,INPUT);

t = millis();

}

void loop() {


measurevelocity();

     
    

}
void measurevelocity(){
  
  unsigned long t1 = millis()+15000;
  while(millis()< t1){
    loops = value/19;
if(digitalRead(29)!=a  && digitalRead(29)){
value++;
}
a=digitalRead(29);

if(millis() ==  t+1000){
  t = millis();
  rpm = loops*60;
  value=0;
   b[count ++] = rpm ;
    
   if(count>30){
    for(int i = 0 ; i<29 ;i++){
      avgRpm= avgRpm + b[i];
   }
      avgRpm =avgRpm/30;
      
   }
      
    if(rpm>maxSpeed){
     maxSpeed =rpm ;
     accelerasion = maxSpeed/millis();
     accelerasion = accelerasion *1000*2*3.14/60;
     }
    
  }
  
  Serial.print("accelerasion : ");
  Serial.print(accelerasion);
  Serial.println(  "rad/s2");
  //Serial.print("----------");
  Serial.print("Speed : ");
  Serial.print(avgRpm);
  Serial.println(  "Rpm");
  }
  Serial.print("accelerasion : ");
  Serial.print(accelerasion);
  Serial.println(  "rad/s2");
  //Serial.print("----------");
  Serial.print("Speed : ");
  Serial.print(avgRpm);
  Serial.println(  "Rpm");
  }
