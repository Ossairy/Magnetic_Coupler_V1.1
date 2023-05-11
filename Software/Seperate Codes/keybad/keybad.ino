#include <Keypad.h>

const byte ROWS = 4;
const byte COLS = 4;

char hexaKeys[ROWS][COLS] = {
  {'1', '2', '3', '+'},
  {'4', '5', '6', '-'},
  {'7', '8', '9', 'x'},
  {'.', '0', '=', '/'}
};

 char hexaKeys2[ROWS][COLS] = {
  {'A', 'D', 'G', '+'},
  {'J', 'M', 'P', '-'},
  {'S', 'V', 'Y', 'x'},
  {'.', '0', '=', '/'}
};
 
// Connections to Arduino
byte rowPins[ROWS] = {9, 8, 7, 6};
byte colPins[COLS] = {5, 4, 3, 2};
 
// Create keypad object
Keypad customKeypad = Keypad(makeKeymap(hexaKeys), rowPins, colPins, ROWS, COLS);
Keypad customKeypad2 = Keypad(makeKeymap(hexaKeys2), rowPins, colPins, ROWS, COLS);
 
void setup() {
  // put your setup code here, to run once:
Serial.begin(9600);
}

void loop() {
getnum();
}

int getnum(){
 int c =0;
 String b ="";
 char perKey=' ' ;
 int i = 0;
 char chosenKey=' ' ;
 int x =1;
 Serial.println("please enter your choice and press x to confirm");
 int t =millis();
  while(1){
    char customKey = customKeypad.getKey();
    char customKey2 = customKeypad2.getKey();
    if(customKey){ 
      if(customKey == '-'){
        b.remove(b.length()-1);
      x++;
        }



   
        if(customKey == perKey) 
        i++;
   else if(customKey != perKey)
   i=0;
     
      if(i==0) 
        chosenKey = customKey ;
        else if(i==1)
          chosenKey = customKey2 ;
     if(millis() < t+500){
     b.remove(b.length()-1);
      b = b+chosenKey;    
     Serial.println(b);
       }else {
      b = b+chosenKey;
      Serial.println(b);
      t =millis();
      i =0;
    }
     // Serial.println(perKey);
      //Serial.println(i);
       
      perKey = chosenKey ;
       if(customKey == 'x'){
         return c;}
       if(customKey == '-'){
        b.remove(b.length()-1);
      x++;
        }
    }
    }
    }
