#include <Keypad.h>

const byte ROWS = 4;
const byte COLS = 4;

char hexaKeys[ROWS][COLS] = {
  {'1', '2', '3', '+'},
  {'4', '5', '6', '-'},
  {'7', '8', '9', 'x'},
  {'.', '0', '=', '/'}
};
 
// Connections to Arduino
byte rowPins[ROWS] = {30, 32, 34, 36};
byte colPins[COLS] = {38, 40, 42, 44};
 
// Create keypad object
Keypad customKeypad = Keypad(makeKeymap(hexaKeys), rowPins, colPins, ROWS, COLS);
 
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
  
  };

Motor Nema17 =Motor("Nema17",260,1500,30,80);
Motor Nema23 =Motor("Nema23",600,1800,40,90);
bool Measureflag = false;
bool Motorflag =false;
bool Modeflag =false;
Motor  recordedmotors [] = {Nema17 , Nema23};
int arrlength = 2;
void setup() {
Serial.begin(115200);
Serial.print("Hi");
}

void loop() {
//Serial.print("Hi");

if(!Modeflag)
  getMode();

if(digitalRead(24))
 Modeflag = false;


}


Motor testandreport(){
Serial.println("DO YOU WANT RECORDED DATA OF STANDARD MOTORS");
Serial.println(" 1) Yes. ");
Serial.println(" 2) Compare with my data. ");
Serial.println(" 3) Back. ");
  while(1){
    char customKey = customKeypad.getKey();
    if(customKey){
       if(customKey == '1'){
        Motor a = choosefromrecorded();
        Motor b = a;
         b.Maxrpm = b.measureSPEED();
         b.Power = b.measurePOWER();
         b.Torque = b.measureTORQUE();
         // compare method needed
         return b ;
        
       }
       else if(customKey == '2'){
        
       }
       else if (customKey == '3'){
        getMode();
       }


      
    }
  }

  
}


Motor choosefromrecorded(){
 int l =sizeof(recordedmotors);
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
     return recordedmotors[x];
  
}
}





Motor getMotorParameter(){
 


 
}
  void getMode(){
  

//bool Modeflag =false;
Serial.println("PLEASE CHOOSE MODE");
Serial.println(" 1) measure .");
Serial.println(" 2) test and report . ");

 
 while(1){
    char customKey = customKeypad.getKey();
    if(customKey){
      
     if(customKey == '1'){
        Modeflag = true;
        measure();
        
        Serial.println(".......THANK YOU.......");
        return;
   
  }

     else if(customKey == '2'){
       Modeflag = true;
       Motor a = testandreport();


          Serial.println( a.Name );
       Serial.print("The recorded speed :");
          Serial.println( a.Maxrpm );
       Serial.print("The recorded torque :");
          Serial.println( a.Torque );
       Serial.print("The recorded power :");
          Serial.println( a.Power );
       Serial.print("The recorded efficiency : ");
          Serial.println( a.efficiency );
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
  return; 
}
else if(customKey == '5' ){
   
  getMode();
  
}

  }}}
int measureSPEED (){
  
Serial.println("  measuring SPEED (rpm) ......");

}
int measurePOWER (){
  
Serial.println("  measuring POWER (rpm) ......");

}
int measureTORQUE (){
  
Serial.println("  measuring TORQUE (rpm) ......");

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

  
