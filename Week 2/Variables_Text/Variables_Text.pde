/*Variables_Text.pde
Author: Alexandros Lotsos
Summary: The purpose of this sketch is to show the different ways that processing
represents text (chars and Strings). Text manipulation in programming is usually covered
in much more depth than here so if you want to know more than what's in this sketch
please check out: https://www.youtube.com/watch?v=RxeDe6BsTMI [note that there's some arrays in there]
*/

void setup(){
  //Processing has two different ways to represent text: Characters and Strings
  
  //Characters are single characters preceded by the char data type and are defined as follows:
  char firstChar = 'a'; //note the single quotes. Double quotes won't work
  char secondChar = 'B'; //capitals work as well
  char thirdChar = '+'; //symbols and numbers work too.
  char fourthChar = '2';
  
  //note that println means print line. Look at the bottom of the IDE!
  println("firstChar = " + firstChar);
  println("secondChar = " + secondChar);
  println("thirdChar = " + thirdChar);
  println("fourthChar = " + fourthChar);
  
  //Strings are collections of concatenated characters and are preceded by the String data type:
  String firstString = "Hello!"; //here "Hello!" is comprised of each individual character
  String secondString = firstString + fourthChar; //you can literally add a char onto a string
  String thirdString = firstString + " Nice to meet you!"; //you can also add two strings together back to back
  
  //You can access an individual character in a string and get back a char as follows:
  char letterE = firstString.charAt(1); //in this case, the letter E is the character at position 1 starting from 0.
  
  println("firstString = " + firstString);
  println("secondString = " + secondString);
  println("thirdString = " + thirdString);
  println("The character at position 1 of firstString was: " + letterE); //try changing the contents of firstString to see what happens!
  
  /*
  Note that there are some characters that require extra attention when putting them in strigns
  consider a string that reads: The sign said "Don't touch". How would you define it?
  */
  
  //the following won't work, uncomment for error
  //String signContent = "The sign said "Don't touch"";
  //You need to escape the characters that cause problems with a backslash (i.e. \" instead of just ")
  String signContent = "The sign said \"Don't touch\"";
  println(signContent);
  
  //a complete list of escape characters: https://stackoverflow.com/questions/1367322/what-are-all-the-escape-characters
}
