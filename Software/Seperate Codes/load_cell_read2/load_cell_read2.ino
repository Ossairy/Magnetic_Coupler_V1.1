
#include "HX711.h"

#define calibration_factor -16650.00 //This value is obtained using the SparkFun_HX711_Calibration sketch

#define LOADCELL_DOUT_PIN  3
#define LOADCELL_SCK_PIN  2

HX711 scale;

void setup() {
  Serial.begin(9600);
 // Serial.println("HX711 scale demo");

  scale.begin(LOADCELL_DOUT_PIN, LOADCELL_SCK_PIN);
  scale.set_scale(calibration_factor);
  scale.tare();

  Serial.println("Readings:");
}

void loop() {
  Serial.print("Reading: ");
  Serial.print((scale.get_units()*0.453592)*100*6250*9.8/1000, 1); 
  Serial.print(" N.mm"); 
  Serial.println();
}
