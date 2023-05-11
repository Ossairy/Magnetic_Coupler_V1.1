#include <Keypad.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#include <Stepper.h>

#include "HX711.h"

#define calibration_factor -17090.00 //This value is obtained using the SparkFun_HX711_Calibration sketch

#define LOADCELL_DOUT_PIN  36
#define LOADCELL_SCK_PIN  34

HX711 scale;

int torque;
const int stepsPerRevolution = 200;
Stepper myStepper = Stepper(stepsPerRevolution, 53, 51, 49, 47);

float power;
float current ;

int a =  0;
float value =0;
int avgRpm ;
int count=0;

float loops;
int rpm = 0;
int b [30] ;
float maxSpeed =0;
float minSpeed=0;
float accelerasion;



//int a =  0;
//float value =0;
int a2 =  0;
float value2 =0;
//unsigned long long t =0;
//loat loops;
float loops2;
//int rpm = 0;
int rpm2 = 0;
//float maxSpeed =0;
//float accelerasion;
int maxtorque;

// Declaration for an SSD1306 display connected to I2C (SDA, SCL pins)
//Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, -1);

const byte ROWS = 4;
const byte COLS = 4;

char hexaKeys[ROWS][COLS] = {
  {'1', '2', '3', '+'},
  {'4', '5', '6', '-'},
  {'7', '8', '9', 'x'},
  {'.', '0', '=', '/'}
};
 
// Connections to Arduino
byte rowPins[ROWS] = {7, 6, 5, 4}; //connect to the row pinouts of the keypad
byte colPins[COLS] = {3, 2, 44, 22}; //connect to the column pinouts of the keypad
 
// Create keypad object
Keypad customKeypad = Keypad(makeKeymap(hexaKeys), rowPins, colPins, ROWS, COLS);
 /*
class Motor {
  public :
   String Name ;
   int Torque ; 
   int Maxrpm ; 
   int Power ; 
   int efficiency ;
   public:
    Motor (String Name , int Torque , int Maxrpm , int Power , int efficiency ){
      this->Name = Name;
      this->Torque = Torque;
      this->Maxrpm = Maxrpm;
      this->Power = Power;
      this->efficiency = efficiency;
      
      init();
      
      }
  int measureSPEED (){
  
Serial.println(" qq measuring SPEED (rpm) ......");

}
int measurePOWER (){
  
Serial.println("  qq measuring POWER (rpm) ......");

}
int measureTORQUE (){
  
Serial.println("  qq measuring TORQUE (rpm) ......");

}
  
  };*/

//Motor Nema17 =Motor("Nema17",260,1500,30,80);
//Motor Nema23 =Motor("Nema23",600,1800,40,90);
bool Measureflag = false;
bool Motorflag =false;
bool Modeflag =false;
//Motor  recordedmotors [] = {Nema17 , Nema23};
int arrlength = 2;
void setup() {
//Serial.begin(115200);
pinMode(23,OUTPUT);

pinMode(25 , INPUT) ;

pinMode(43 , OUTPUT) ;
pinMode(45 , OUTPUT) ;
pinMode(24 , INPUT) ;
digitalWrite (13, LOW) ;
pinMode(41 , OUTPUT) ;

pinMode(53,OUTPUT);
pinMode(51,OUTPUT);
pinMode(47,OUTPUT);

pinMode(27 , OUTPUT);
digitalWrite(27,HIGH);
pinMode(33,OUTPUT);
digitalWrite(33,HIGH);
pinMode(A13,OUTPUT);
digitalWrite(A13,HIGH);
pinMode(A15,OUTPUT);
digitalWrite(A15,HIGH);
//pinMode(33,OUTPUT);


Serial.begin(9600);
 scale.begin(LOADCELL_DOUT_PIN, LOADCELL_SCK_PIN);
  scale.set_scale(calibration_factor);
  //scale.tare();
pinMode(31,INPUT);
pinMode(29,INPUT);
}

void loop() {
 
if(!Modeflag)
  getMode();

if(digitalRead(38))
 Modeflag = false;


}


void testandreport(){
Serial.println("DO YOU WANT RECORDED DATA OF STANDARD MOTORS");
Serial.println(" 1) Yes. ");
Serial.println(" 2) Compare with my data. ");
Serial.println(" 3) Back. ");
  while(1){
    char customKey = customKeypad.getKey();
    if(customKey){
       if(customKey == '1'){
        //Motor a = choosefromrecorded();
        //Motor b = a;
        // b.Maxrpm = b.measureSPEED();
         //b.Power = b.measurePOWER();
         //b.Torque = b.measureTORQUE();
         // compare method needed
         return  ;
        
       }
       else if(customKey == '2'){
        
       }
       else if (customKey == '3'){
        getMode();
       }


      
    }
  }

  
}


void choosefromrecorded(){
 /*int l =sizeof(recordedmotors);
  while(1){
 for(int i=0 ; i< arrlength ; i++ ){

  Serial.print(i+1);
  Serial.print(") ");
  Serial.println(recordedmotors[i].Name);
  
 }
  int x = getnum() -1 ;
  if ( x >arrlength){
    Serial.println("please choose a motor listed");
  }
   else 
     return ;
  
}*/
}





void getMotorParameter(){
 


 
}
  void getMode(){
  

//bool Modeflag =false;
Serial.println("PLEASE CHOOSE MODE");
Serial.println(" 1) measure .");
Serial.println(" 2) test and report . ");
//display.println("Hello, world!");
  //display.display(); 

 
 while(1){
    char customKey = customKeypad.getKey();
    if(customKey){
      
     if(customKey == '1'){
        Modeflag = true;
        measure();
        
        Serial.println(".......THANK YOU.......");

digitalWrite(23,HIGH);
delay(500);
digitalWrite(23,LOW);
delay(100);
digitalWrite(23,HIGH);
delay(500);
digitalWrite(23,LOW);
delay(100);
digitalWrite(23,HIGH);
delay(500);
digitalWrite(23,LOW);


        return;
   
  }

     else if(customKey == '2'){
       Modeflag = true;
       testandreport();


          Serial.println();
       Serial.print("The recorded speed :");
          Serial.println();
       Serial.print("The recorded torque :");
          Serial.println();
       Serial.print("The recorded power :");
          Serial.println();
       Serial.print("The recorded efficiency : ");
          Serial.println();
       Serial.print(".......THANK YOU.......");

       // save in SD card
       return;
      }
    }
  }
}
void measure(){
Serial.println("PLEASE CHOOSE WHAT DO YOU WANT TO MEASURE");
Serial.println(" 1) measure SPEED (rpm) .");
Serial.println(" 2) measure POWER (watt) . ");
Serial.println(" 3) measure TORQUE (n.mm) . ");
Serial.println(" 4) measure ALL . ");
Serial.println(" 5) BACK . ");
while(1){ 
 char customKey = customKeypad.getKey();
 if(customKey){

  if(  customKey == '1'){
   measureSPEED();
    return; 
  }
  else if( customKey == '2' ){
 
 measurePOWER();
 return;  
  }
else if(customKey == '3' ){
  
 measureTORQUE();
  return;    
}
else if(customKey == '4' ){
    
  measureSPEED();
  measurePOWER();
  measureTORQUE();

Serial.print("Mechanical power :");
Serial.print(maxtorque*2*avgRpm*3.14/60);
  
  return; 
}
else if(customKey == '5' ){
   
  getMode();
  
}

  }}}
int measureSPEED (){
  
Serial.println("  measuring SPEED (rpm) ......");
analogWrite(45,0);
 while(digitalRead(A0)== LOW){
  myStepper.setSpeed(50);
  myStepper.step (-50);
  
}
myStepper.step (0);

//int pwm = map(40,0,100,0,255);
digitalWrite(43,HIGH);
digitalWrite(41,LOW);
analogWrite(45,255);
  unsigned long long t =millis();
  unsigned long long t2 = millis()+15000; 

while(millis()<t2){
loops = value/18;
loops2 = value2/18;


if(digitalRead(29)!=a  && digitalRead(29)){
value++;
}
if(digitalRead(35)!=a2  && digitalRead(35)){
value2++;
}
a2=digitalRead(29);
a=digitalRead(35);

if(millis() >=  t+1000){
  t = millis();
  rpm = loops*60;
  value=0;
  
   rpm2 = loops2*60;
   value2=0;


b[count ++] = rpm ;
    
   if(count>14){
    for(int i = 0 ; i<13 ;i++){
      avgRpm= avgRpm + b[i];
   }
      avgRpm =avgRpm/14;
      
   }

   
    if(rpm>maxSpeed){
     maxSpeed =rpm ;
     accelerasion = maxSpeed/millis();
     accelerasion = accelerasion *1000*2*3.14/60;}
  
 // Serial.print(rpm2);
  //Serial.print("----------");
 // Serial.println(rpm);
  } 


}
  Serial.print("No load angular velocity : ");
  Serial.print(2*3.14*avgRpm/60);
  Serial.println(  "rad/s");
  
  Serial.print("accelerasion : ");
  Serial.print(accelerasion);
  Serial.println(  "rad/s2");
 // Serial.print("----------");
  Serial.print("No load Speed : ");
  Serial.print(avgRpm);
  Serial.println(  "Rpm");
analogWrite(45,0);

}



float measurePOWER (){
  
Serial.println("  measuring POWER (rpm) ......");
analogWrite(45,0);

 while(digitalRead(A0)== LOW){
  myStepper.setSpeed(50);
  myStepper.step (-50);
  
}
digitalWrite(43,HIGH);
digitalWrite(41,LOW);
analogWrite(45,255);
unsigned long t3 = millis()+5000;

while(millis()< t3){

unsigned int x=0;
float AcsValue=0.0,Samples=0.0,AvgAcs=0.0,current=0.0;
//analogWrite(6,1023s);
  for (int x = 0; x < 150; x++){ 
  AcsValue = analogRead(A12);        
  Samples = Samples + AcsValue;  
  delay (3); 
}
AvgAcs=Samples/150.0;
current = (2.5 - (AvgAcs * (5.0 / 1024.0)) )/0.066;
power = current/1000*9;
//Serial.println(current);
//Serial.println(power);
}
delay(50);
  analogWrite(4,0);
  
Serial.print(" current : ");
Serial.print(current);
Serial.println(" A");

Serial.print("Electirical Power : ");
Serial.print(power);
Serial.println("watt");
  
  return power;

}




int measureTORQUE (){
  
Serial.println("  measuring TORQUE (N.mm) ......");

analogWrite(45,0);
 while(digitalRead(A0)== LOW){
  myStepper.setSpeed(50);
  myStepper.step (-50);
  
}
myStepper.step (0);

int pwm = map(40,0,100,0,255);
digitalWrite(43,HIGH);
digitalWrite(41,LOW);
analogWrite(45,100);

while(digitalRead(A1) == LOW){
  myStepper.setSpeed(50);
  myStepper.step (50);
  
}
 maxtorque =0;
myStepper.step (0);
 unsigned long t = millis();
 t = t+15000;

while(millis()< t){

pwm = map(100,0,100,0,255);
analogWrite(45,255);

torque =(scale.get_units()*0.453592)*10*6250*9.8/1000;
 //Serial.print("Reading: ");
  //Serial.print((scale.get_units()*0.453592)*100*6250*9.8/1000, 1); 
  //Serial.print(" N.mm"); 
  //Serial.println();

if(torque>maxtorque){
     maxtorque =torque ;
     //accelerasion = maxSpeed/millis();
     //accelerasion = accelerasion *1000*2*3.14/60;
     }
  
}
Serial.print(" maximum torque : "); 
Serial.print( maxtorque); 
Serial.println(" N.mm"); 
  //Serial.println();

analogWrite(45,0);
///if you want to return it back///

while(digitalRead(A0) == LOW){
  myStepper.setSpeed(50);
  myStepper.step (-50);
  
}
myStepper.step (0);

return torque;

}

int getnum(){
 int c =0;
 String b ="";
 Serial.println("please enter your choice and press x to confirm");
  while(1){
    char customKey = customKeypad.getKey();
  if(customKey) {
     Serial.println(customKey);
      b = b+customKey;
      Serial.println(b);
       c = b.toInt();
      Serial.println(c);
       if(customKey == 'x'){
         return c;}
      
    }}}

  
