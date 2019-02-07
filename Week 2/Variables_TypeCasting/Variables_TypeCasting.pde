/*Variables_TypeCasting.pde
Author: Alexandros Lotsos
Summary: The purpose of this sketch is to introduce the concept of typecasting variables.
Typecasting is used to convert a variable of one primitive datatype to another (i.e. a char to an int
or a float to an int).
*/

void setup(){
  //let's define a bunch of variables first
  int testInt = 100;
  char testChar = 'a';
  boolean testBool = false;
  float testFloat = 4.2;
  
  //You can cast a variable into another type in the following syntax:
  //DataType2 varName2 = (DataType2) varName1;
  
  /*INTS*/
  //ints can only be converted to characters and floats.
  char intToChar = (char)testInt; //integer to character
  float intToFloat = (float)testInt; //integer to float
  //print out our results
  println("int to char: " + intToChar);
  println("int to float: " + intToFloat);
  
  /*FLOATS*/
  //floats can only be converted to integers and characters.
  int floatToInt = (int)testFloat;
  char floatToChar = (char)testFloat;
  //print out our results
  println("float to int: " + floatToInt);
  println("float to char: " + floatToChar);
  
  /*CHARS*/
  //chars can only be converted to ints and floats.
  int charToInt = (int)testChar;
  float charToFloat = (float)testChar;
  //print out our results
  println("char to int: " + charToInt);
  println("char to float: " + charToFloat);
  
  /*BOOLS*/
  //booleans cannot be converted to anything. Uncomment for errors.
  //int boolToInt = (int)testBool;
  //char boolToChar = (char)testBool;
  //float boolToFloat = (float)testBool; 
}
