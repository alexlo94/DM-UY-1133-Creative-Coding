/*Variables_PrimitiveData.pde
Author: Alexandros Lotsos
Summary: The purpose of this sketch is to introduce variable definition and all the different data types
that are available to you in processing. Java supports more (byte, short, long and double)
but these are the ones used most commonly by processing.
For a complete list of Java data types: https://cs.fit.edu/~ryan/java/language/java-data.html
*/

void setup(){
    /*
  There are 4 different primitive data types available in processing:
    boolean is a boolean, denoting a true or false value.
    char is a character, denoting a single ASCII character value.
    int is an integer, denoting an integer number value.
    float is a floating point number, denoting a decimal number value.
    
    Every other data type or structure can somehow be portrayed as a combination
    of the above. The most common example being Strings, which are collections of chars
  */
  
  //Define a variable with the following syntax: dataType variableName = value;
  boolean testBoolean = false;
  char testChar = 'a';
  int testInt = 42;
  float testFloat = 6.2;
  
  println("testBoolean = " + testBoolean);
  println("testChar = " + testChar);
  println("testInt = " + testInt);
  println("testFloat = " + testFloat);
  
  //You can also define a variable but not assign a value to it if you need to do that at a later time
  int container; //container value is null at this point
  //the print statement below will yield an error
  //println("container value is: " + container);
  container = 32; //attach a value to container and try again
  println("container value is: " + container); //works like a charm
  
  //you can also define multiple variables of the same type on the same line and assign values later
  int x, y, z;
  x = 1;
  y = 2;
  z = -2;
  
  println("(x, y, z) = " + "( " + x + ", " + y + ", " + z + ")");
  
  //Finally, pay attention to the difference between assigning a value to a variable and defining a variable
  int val = 5; //let's say I want to overwrite this with a value of 10
  println("val = " + val);
  //the following would be wrong, uncomment for an error
  //int val = 10;
  //the following would work, notice the ommission of the data type before the variable name:
  val = 10;
  println("val = " + val);
}
