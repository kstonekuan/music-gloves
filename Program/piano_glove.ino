/* This is a simple test for two way traffic via bluetooth 
   but you can try it first using the USB cable to the serial 
   monitor without the bluetooth module connected.
   
   Note that some bluetooth modules come set to a different baud rate.
   This means you need to alter the command
                Serial.begin(9600) accordingly
   Same goes for the setting in the bottom right corner on the 
   serial monitor
 
   NOTE ESPECIALLY
   You can watch proceedings on the PC serial monitor while you do
   the deeds on your Android device, but only watch. You cannot
   send from the serial monitor.
   
   HIT THE RESET BUTTON ON ARDUINO AFTER YOU HAVE MADE THE 
   CONNECTION WITH THE BLUETOOTH APP. And let the show begin....
   */

int thumb = A0;
int index = A1;
int mid = A2;
int ring = A4;
int pinky = A3;

void setup()
{
    Serial.begin(9600);
    pinMode(thumb, OUTPUT);
    pinMode(index, OUTPUT);
    pinMode(mid, OUTPUT);
    pinMode(ring, OUTPUT);
    pinMode(pinky, OUTPUT);
}

void loop() {
   //  check if thumb is closed or open 
   String output = "";
   if (analogRead(thumb) < 600) output += "0 ";
     else output += "1 ";
   if (analogRead(index) < 600) output += "0 ";
     else output += "1 ";
   if (analogRead(mid) < 600) output += "0 ";
     else output += "1 ";
   if (analogRead(ring) < 600) output += "0 ";
     else output += "1 ";
   if (analogRead(pinky) < 600) output += "0 ";
     else output += "1 ";
   Serial.println(output);
   delay(100);
}
