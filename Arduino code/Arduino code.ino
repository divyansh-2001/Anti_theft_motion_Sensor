#include <Keypad.h>                // library for keyboard
#include <Password.h>              // library for password

Password password = Password( "2358" );  // password

const byte rows = 4;                     // defining no. of rows    
const byte cols = 4;                     // defining no. of cols
char keys[rows][cols] = {                // mapping of keys

{'1','2','3','A'},
{'4','5','6','B'},
{'7','8','9','C'},
{'*','0','#','D'},

};

byte rowPins[rows] = {9,8,7,6};
byte colPins[cols] = {5,4,3,2};
Keypad keypad = Keypad(makeKeymap(keys), rowPins, colPins, rows, cols);



#define pirpin A3      // pin - PIR sensor data
#define buzzer 12      // pin - siren, buzzer
#define red A2        //  pin - red led
#define green A0        // pin - green led
#define yellow A1    // pin - yellow led

int ledBlink;

int pirval;

//curtime - to read the internal clock
//timpmemorat - to note the time after each step
unsigned long curtime, timpmemorat;

int standbytime = 10;    // To cause a delay before sensor is armed
int cdtime = 10; // To delay the activation of alarm

// This is the variable for states "0"
char status = 0;

int s_status = 0;      // system status (off/on)


/*
States for 

  0. - off
  1. - stand-by
  2. - waiting
  3. - countdown
  4. - alarm

*/

void setup()
  {
  keypad.addEventListener(keypadEvent); // an object is created for tracking keystrokes
  
  Serial.begin(9600);  
  pinMode(buzzer, OUTPUT);
  pinMode(pirpin, INPUT);
  pinMode(red, OUTPUT);
  pinMode(yellow, OUTPUT);
  pinMode(green, OUTPUT);
  }

void loop()
  
  {
     
  curtime = millis();    // To read the internal clock
  
keypad.getKey();
 
     
    if (s_status%2 == 0)
    {
    // alarm is off
    digitalWrite(green, LOW);
    digitalWrite(red, LOW);
    digitalWrite(yellow, HIGH);

    digitalWrite(buzzer, LOW);
    status = 0;

    }

  else
    {
    // alarm is on
    if(status == 0) 
     {
     status = 1;
     timpmemorat = curtime;
     digitalWrite(yellow, HIGH);
     }

    if(status == 1)              // system in standby state
      {

      if ((curtime%1000)<500) digitalWrite(green, HIGH);
      else digitalWrite(green, LOW);
 keypad.getKey();
      if(curtime >= timpmemorat + standbytime * 1000) {status = 2;}
      }
      
    if(status == 2)              // system is armed
      {
      digitalWrite(green, HIGH); 
 keypad.getKey();
   
      pirval = digitalRead(pirpin);  
   

     if(pirval == HIGH)
       {
       status = 3;
       timpmemorat = curtime;
       digitalWrite(green, LOW);
       }

      }

    if(status == 3)              // system is triggered and countdown
      {             

      if ((curtime%500)<100) digitalWrite(red, HIGH);
      else digitalWrite(red, LOW);
 keypad.getKey();
      if(curtime >= timpmemorat + cdtime * 1000) {status = 4; timpmemorat = curtime;}

      }

    if(status == 4)              // buzzer is set
      {
      //digitalWrite(buzzer, HIGH);
      digitalWrite(red, HIGH);
      Serial.println("Siren is active !"); //Used for troubleshooting


// For siren

    for(double y = 0; y < 0.92; y += 0.01){  // Elegant Alarm Tone
        tone(10, sinh(y+8.294), 10);
        delay(1);
        }   
    
      
 keypad.getKey();      
      }
    }
  }
  
  //take care of some special events
void keypadEvent(KeypadEvent eKey){
  switch (keypad.getState()){
    case PRESSED:
  Serial.print("Pressed: ");
  Serial.println(eKey);
  switch (eKey){
    case '*': checkPassword(); break;
    case '#': password.reset(); break;
    default: password.append(eKey);
     }
  }
}

  
  void checkPassword(){
  if (password.evaluate()){

  s_status++;
  password.reset();
  }else{
    ledBlink = 0;
    while (ledBlink <= 5){
    digitalWrite(red, HIGH);
    delay(100);
    digitalWrite(red, LOW);
    delay(100);
    ledBlink++;
    }
    password.reset();
  }
}
