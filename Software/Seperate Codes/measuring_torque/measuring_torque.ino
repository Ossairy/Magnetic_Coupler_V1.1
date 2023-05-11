#include <Stepper.h>

#include "HX711.h"

#define calibration_factor -16650.00 //This value is obtained using the SparkFun_HX711_Calibration sketch

#define LOADCELL_DOUT_PIN  35
#define LOADCELL_SCK_PIN  33

HX711 scale;

int torque;
const int stepsPerRevolution = 200;
Stepper myStepper = Stepper(stepsPerRevolution, 46, 48, 50, 52);


void setup() {
pinMode(25 , INPUT) ;
pinMode(27 , INPUT) ;
pinMode(13 , OUTPUT) ;
pinMode(4 , OUTPUT) ;
pinMode(24 , INPUT) ;
digitalWrite (13, LOW) ;
pinMode(41 , OUTPUT) ;
Serial.begin(115200);
 scale.begin(LOADCELL_DOUT_PIN, LOADCELL_SCK_PIN);
  scale.set_scale(calibration_factor);
  scale.tare();

  Serial.println("processing.....");






  
}

void loop() {
 
  if(digitalRead(24))
   testtorque();

} 






int testtorque(){
 analogWrite(6,0);
 while(digitalRead(27)== HIGH){
  myStepper.setSpeed(50);
  myStepper.step (-50);
  
}
myStepper.step (0);

int pwm = map(40,0,100,0,255);
digitalWrite(41,HIGH);
analogWrite(4,100);

while(digitalRead(25) == HIGH){
  myStepper.setSpeed(50);
  myStepper.step (50);
  
}
myStepper.step (0);
 unsigned long t = millis();
 t = t+15000;

while(millis()< t){

pwm = map(100,0,100,0,255);
analogWrite(4,255);

torque =(scale.get_units()*0.453592)*100*6250*9.8/1000;
 Serial.print("Reading: ");
  Serial.print((scale.get_units()*0.453592)*100*6250*9.8/1000, 1); 
  Serial.print(" N.mm"); 
  Serial.println();
  
}
analogWrite(4,0);
///if you want to return it back///

while(digitalRead(27) == HIGH){
  myStepper.setSpeed(50);
  myStepper.step (-50);
  
}
myStepper.step (0);

return torque;
  
}
