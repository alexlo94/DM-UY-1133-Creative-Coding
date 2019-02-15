/*
Arrays_01_Basics.pde
Author: Alexandros Lotsos
Summary: A sketch that outlines the basics arrays, including how to
declare, populate and reference individual values of an array.
*/

/*
In Java, an array is a fixed-size data structure that is meant to represent
a collection of variables that are somehow related. They serve to group together
individual variables that can have any of the types we've discussed before.
For example, a roster of employees at a company may be represented by an array of Strings
where each String is the name of an employee. It's worth noting that arrays can only have variables
of one type in Java and you would not be able to declare an array that has ints and chars in it.
*/

//Let's create and print out an employee roster, along with their efficiency scores
void setup(){
  /*DECLARING AN ARRAY*/
  String[] employees = {"Alice", "Bob", "Charlie", "Dave"}; //declare and assign together, Syntax: datatype[] varName = {val1, val2, ..., valN};
  int[] effScores = new int[4]; //declare and assign later, Syntax: datatype[] varName = new datatype[length];
  
  println(employees);
  println(effScores); //notice how this is filled with 0's, the default value for int.
  
  /*ACCESSING ARRAY ELEMENTS*/
  //In order to access individual elements of an array we refer to the position of each value in the array.
  //Or otherwise, the INDEX of the element, starting from 0 and going all the way up to the length of the array - 1.
  println(employees[0]);//should print Alice, the first (0th) employee in the array. Syntax: arrayName[index]
  println(employees[2]);//should print Charlie, the third (2nd) employee in the array.
  println(employees[3]);//should print Dave, the last employee (3rd) in the array.
  //Trying to access an index that's larger than the length of the array will result in an error. Try uncommenting below
  //println(employees[5]);
  
  /*ASSIGNING VALUES TO ARRAY ELEMENTS*/
  //let's access each slot in the effScores array and assign some values now. This is the same as assigning a value to an individual variable
  effScores[0] = 100;
  effScores[1] = 82;
  effScores[2] = 94;
  effScores[3] = 90;
  println(effScores);
  
  /*DISPLAY THE INFORMATION*/
  //Let's make some strings out of the data in our array to put in text on our canvas.
  String AliceScore = employees[0] + ": " + effScores[0] + "/100";
  String BobScore = employees[1] + ": " + effScores[1] + "/100";
  String CharlieScore = employees[2] + ": " + effScores[2] + "/100";
  String DavidScore = employees[3] + ": " + effScores[3] + "/100";
  
  //render the text onto the canvas
  textAlign(CENTER, CENTER);
  textSize(48);
  text(AliceScore, width/4, height/4);
  text(BobScore, 3*width/4, height/4);
  text(CharlieScore, width/4, 3*height/4);
  text(DavidScore, 3*width/4, 3*height/4);
  
  //Can you think of a way to avoid the repetition above? 
}
