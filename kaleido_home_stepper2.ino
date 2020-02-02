// Include le librerie AccelStepper e DMXSerial
#include <AccelStepper.h>
#include <DMXSerial.h>

// Variabili che servono per sapere se i motori sono in FC
bool stop1 = false;
bool stop2 = false;
bool home1 = false;
bool home2 = false;

// Inizializza la libreria per usare due stepper motor driver A4988 (1), e indirizza i pin DIR (4, 8) e STEP (3, 7)
AccelStepper stepper1(1, 4, 3);
AccelStepper stepper2(1, 8, 7);

byte LedValue;
byte Mot1PosValue;
byte Mot1VelValue;
byte Mot2PosValue;
byte Mot2VelValue;
int sensorValue1;
int sensorValue2;

// variabili che servono a leggere il dip switch per assegnare l'indirizzo DMX del primo canale di controllo dei 5 totali
int pin = 0; // indice di dipPin
int stato = 0; // stato del pin digitale
int valore = 0; // peso del pin e indice di dipVal
const int sd1 = 12;    // pin controllo per dip
const int sd2 = 13;    // pin controllo per dip

const int dipPin[] = {14,15,16,17,18}; // assegnazione Pin per DipSwitch
int dipVal[] = {1,2,4,8,16,32,64,128,256,512}; // valori da assegnare in base al dip
int address; // indirizzo DMX iniziale

void setup() {
  pinMode(sd1, OUTPUT); // setta uscite i pin per multiplex dipswitch
  pinMode(sd2, OUTPUT); // setta uscite i pin per multiplex dipswitch

  for (pin = 0; pin < 5;pin++) {
    pinMode(dipPin[pin], INPUT); // setta ingressi del dipswitch
  }
  //
  // *********************************************
  // per leggere i primi 5 valori

  digitalWrite(sd1, HIGH); // Abilita alto il primo Dip per leggere i valori
  digitalWrite(sd2, LOW);  // Disabilita il secondo dip
  
  for (pin = 0;pin < 5;pin++) {
    stato = digitalRead(dipPin[pin]);// legge il valore digitale del pin
    if (stato == HIGH) {
      valore = dipVal[pin];
      address = address + valore;
    }
    delay(15);
  }

  // **********************
  // PER LEGGERE I SECONDI 5 VALORI
  digitalWrite(sd1, LOW); // Abilita alto il primo Dip per leggere i valori
  digitalWrite(sd2, HIGH);  // Disabilita il secondo dip

  for (pin = 0;pin < 5;pin++) {
    stato = digitalRead(dipPin[pin]); // legge il valore digitale del pin

    if (stato == HIGH) {
      valore = dipVal[pin+5]; //CARICA IL DIPVAL(INDICE) IN valore  —  PROVA SHIFT + 5
      address = address + valore;
    }
    delay(15);
  }
  digitalWrite(sd1, LOW); // Disabilita il primo Dip
  digitalWrite(sd2, LOW);  // Disabilita il secondo dip
  DMXSerial.init(DMXReceiver);
  stepper1.setMaxSpeed(2500);
  stepper1.setSpeed(1000);
  stepper1.setAcceleration(2500);
  stepper2.setMaxSpeed(2500);
  stepper2.setSpeed(1000);
  stepper2.setAcceleration(2500);
  home_motors();
}

void loop() {
  LedValue = DMXSerial.read(address); // valore della luminostà del led
  Mot1PosValue = DMXSerial.read(address + 1); // valore che imposta la modalità di funzionamento del motore1 (ruota kaleido)
  Mot1VelValue = DMXSerial.read(address + 2); // velocità di rotazione del motore1
  Mot2PosValue = DMXSerial.read(address + 3); // valore che imposta la modalità di funzionamento del motore2 (specchi rotanti)
  Mot2VelValue = DMXSerial.read(address + 4); // velocità di rotazione del motore2
  analogWrite(10, 0.0000957*LedValue*LedValue*40.95);
  if (Mot1PosValue == 0 & home1 == false) { // se il valore DMX Mot1PosValue è zero, e non è già stato fatto, esegue l'home del motore1
    stop1 = false;
    home_motor1();
  }
  if (Mot2PosValue == 0 & home2 == false) { // se il valore DMX Mot2PosValue è zero, e non è già stato fatto, esegue l'home del motore2
    stop2 = false;
    home_motor2();
  }
  if (Mot1PosValue < 201) { // se il valore DMX Mot1PosValue è da 1 a 200 muove la ruota kaleido nella posizione 0-360°
    stepper1.moveTo(Mot1PosValue * 12);
    stepper1.run();
  } else if (Mot1PosValue > 200 & Mot1PosValue < 228) { // se il valore DMX Mot1PosValue è da 201 a 227 fa girare la ruota kaleido in senso orario
    home1 = false;
    stepper1.setSpeed(Mot1VelValue * 5); // setta la velocità in base al valore DMX Mot1VelValue x 5
    stepper1.runSpeed();
    sensorValue1 = analogRead(A6); // se scatta il finecorsa viene azzerrata la posizione corrente
    if (sensorValue1 > 1000) {
      stepper1.setCurrentPosition(0);
    }
  } else if (Mot1PosValue > 228 & Mot1PosValue < 256) { // se il valore DMX Mot1PosValue è da 208 a 255 fa girare la ruota kaleido in senso antiorario
    home1 = false;
    stepper1.setSpeed(-Mot1VelValue * 5);
    stepper1.runSpeed();
    sensorValue1 = analogRead(A6);
    if (sensorValue1 > 1000) {
      stepper1.setCurrentPosition(0);
    }
  }
  if (Mot2PosValue < 201) {
    stepper2.moveTo(Mot2PosValue * 20);
    stepper2.run();
  } else if (Mot2PosValue > 200 & Mot2PosValue < 228) {
    home2 = false;
    stepper2.setSpeed(Mot2VelValue * 7.5);
    stepper2.runSpeed();
    sensorValue2 = analogRead(A5);
    if (sensorValue2 > 1000) {
      stepper2.setCurrentPosition(0);
    }
  } else if (Mot2PosValue > 228 & Mot2PosValue < 256) {
    home2 = false;
    stepper2.setSpeed(-Mot2VelValue * 5);
    stepper2.runSpeed();
    sensorValue2 = analogRead(A6);
    if (sensorValue2 > 1000) {
      stepper2.setCurrentPosition(0);
    }
  }
}

void home_motors() {
  stepper1.moveTo(-100);
  stepper2.moveTo(-200);
  while (stepper1.distanceToGo() != 0 & stepper2.distanceToGo() != 0) {
    stepper1.run();
    stepper2.run();
  }
  stepper1.setSpeed(1000);
  stepper2.setSpeed(1000);
  while (stop1 == false | stop2 == false) {
    if (stop1 == false) {
      stepper1.runSpeed();
      sensorValue1 = analogRead(A6);
      if (sensorValue1 > 1000) {
        stepper1.stop();
        stop1 = true;
      }
    }
    if (stop2 == false) {
      stepper2.runSpeed();
      sensorValue2 = analogRead(A5);
      if (sensorValue2 > 1000) {
        stepper2.stop();
        stop2 = true;
      }
    }
  }
  home1 = true;
  home2 = true;
  stepper1.setCurrentPosition(0);
  stepper2.setCurrentPosition(0);  
}

void home_motor1() {
  stepper1.setSpeed(1000);
  while (stop1 == false) {
    stepper1.runSpeed();
    sensorValue1 = analogRead(A6);
    if (sensorValue1 > 1000) {
      stepper1.stop();
      stop1 = true;
      home1 = true;
    }
  }
  stepper1.setCurrentPosition(0);
}

void home_motor2() {
  stepper2.setSpeed(1000);
  while (stop2 == false) {
    stepper2.runSpeed();
    sensorValue2 = analogRead(A5);
    if (sensorValue2 > 1000) {
      stepper2.stop();
      stop2 = true;
      home2 = true;
    }
  }
  stepper2.setCurrentPosition(0);
}
