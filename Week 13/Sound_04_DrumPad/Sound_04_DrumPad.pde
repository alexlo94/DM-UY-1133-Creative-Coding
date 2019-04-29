/*
Sound_04_DrumPad.pde
Author: Alexandros Lotsos
Summary: A simple drumpad to show how sound files can be used as part of classes in processing. Using a pad class we will
instantiate 4 different pads that play a unique sound on-click:
  (1) A closed hi-hat
  (2) An open hi-hat
  (3) A kick
  (4) A snare
*/

//import the processing sound library
import processing.sound.*;

//array of pads for us to click on
Pad[] pads = new Pad[4];

void setup(){
  size(600, 600);
  background(0);
  colorMode(HSB, 360, 100, 100);
  
  //sound files for the pads
  SoundFile[] files = {new SoundFile(this, "kick.wav"),
  new SoundFile(this, "snare.wav"),
  new SoundFile(this, "open-hi-hat.wav"),
  new SoundFile(this, "closed-hi-hat.wav")};
  
  //populate our pads array
  for(int i = 0; i < pads.length; i++){
    pads[i] = new Pad(150 + 80*i, height/2 - 25, 50, color(90 * i, 100, 100), files[i]);
  }
  
}

void draw(){
  background(0);
  
  for(int i = 0; i < pads.length; i++){
    //show the pads
    pads[i].show();
    
    //check for clicks. 
    if(mousePressed &&
      mouseX > pads[i].x &&
      mouseX < pads[i].x + pads[i].side &&
      mouseY > pads[i].y &&
      mouseY < pads[i].y + pads[i].side){
      pads[i].clicked();
    }
  }
}

//trigger the pads with the keyboard
void keyPressed(){
  switch(key){
    case '1':
      pads[0].clicked();
      break;
    case '2':
      pads[1].clicked();
      break;
    case '3':
      pads[2].clicked();
      break;
    case '4':
      pads[3].clicked();
      break;
  }
}
