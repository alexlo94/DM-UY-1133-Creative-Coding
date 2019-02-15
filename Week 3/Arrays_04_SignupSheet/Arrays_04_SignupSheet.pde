/*
Arrays_04_SignupSheet.pde
Author: Alexandros Lotsos
Summary: A sketch that uses keyboard input and arrays to maintain a 10 person signup sheet
that is displayed on screen.
*/

String[] names = new String[10]; //Array of names in the signup sheet
String input = ""; //Input String for a new name. Starts empty
int pointer = 0; //pointer value to keep track of our place in the signup sheet
float spacing = 90; //spacing between names on the signup sheet

void setup(){
  //set canvas parameters
  size(1920, 1080);
  background(0);
  stroke(255);
  fill(255);
  
  //set text parameters
  textAlign(LEFT, CENTER);
  strokeWeight(5);
}

void draw(){
  background(0); //refresh bg
  textSize(64);
  
  //divide canvas into 2 portions
  line(width/2, 0, width/2, height);
  
  //input header
  text("INPUT NAME BELOW",width/16, 100);
  line(width/16, 150, width/16 + 620, 150);
  
  //signup sheet header
  text("NAMES IN SHEET", 10*width/16, 100);
  line(10*width/16, 150, 10*width/16 + 510, 150);
  
  //display input
  text(input, width/16, 250);
  
  //display names in the sheet
  textSize(48);
  for(int i = 0; i < names.length; i++){
    if(names[i] == null){
      String output = (i + 1) + ". ";
      text(output, 9*width/16, 200 + i*spacing);
    }else{
      String output = (i + 1) + ". " + names[i];
      text(output, 9*width/16, 200 + i*spacing);
    }
  }
}

/*define keyboard controls for the signup sheet*****
ENTER: inserts input into names and clears input   *
BACKSPACE: drops the last character from the string*
Any ASCII key: Adds said key to the input string   *
***************************************************/
void keyPressed(){
  if(key == ENTER || key == RETURN && input.length() > 0){
    names[pointer] = input; //set current input to the slot of index pointer
    input = ""; //clear input
    pointer = (pointer + 1)%names.length; //increment pointer and loop it around the length of names
  }else if(key == BACKSPACE && input.length() > 0){
    //drop a character from the end of a string using backspace
    String newInput = input.substring(0, input.length() - 1);
    input = newInput;
    println(input);
  }else if(((int)key >= 32 && (int)key <= 126) && (input.length() < 18)){ //check whether the key is a letter in ascii
    input += key;
    println(input);
  }
}
