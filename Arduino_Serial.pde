
import processing.serial.*; 


// Serial Communication
Serial myPort;
String[] msg=new String[7];
float[] value=new float[7];
// String inString;  // Input string from serial port
int lf = 10;

 
void setup()
{
   printArray(Serial.list()); 
  // I know that the first port in the serial list on my mac 
  // is always my  Keyspan adaptor, so I open Serial.list()[0]. 
  // Open whatever port is the one you're using. 
  myPort = new Serial(this, Serial.list()[1], 9600); 
  myPort.bufferUntil(lf);
  
 
}

void draw() {

   for (int i = 0 ; i < 5; i++) {
     print(value[i]);
   }
   println(" ");
}