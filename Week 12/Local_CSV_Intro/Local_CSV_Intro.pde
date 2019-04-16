/*
Local_CSV-Intro.pde
Author: Alexandros Lotsos
Summary: An introductory sketch that works with a local .csv (Comma Separated Values) file. This sketch goes over the basics
of loading and parsing a .csv file, accessing and manipulating its values, and using them to create data-driven sketches in
Processing. 
The dataset "ExampleClass.csv" contains random data regarding the students of an imaginary programming class.
Each row represents a student and the columns are:
  (1) Name: The name of the student
  (2) Year: The current academic year of the student (freshman, sophomore etc.)
  (3) Background: Prior experience in programming (novice, intermediate, advanced)
  (4) Quiz Avg.: The average quiz grade of the student
  (5) Homwork Avg.: The average homework grade of the student
  (6) Midterm: The midterm grade of the student
  (7) Final: The final exam grade of the student
  (8) Absences: The number of absences a student had
  
After loading, this sketch will use the data to compute a final, cumulative grade for each student and add that column to the
dataset. The sketch will ultimately produce a pie chart detailing how many students got A's, B's etc. but pay closer attention
to the data access and manipulation of the table rather than the visualization for this sketch.
*/


//In order to load CSV files, processing defines a Table class
Table students;

void setup(){
  //set canvas parameters
  size(1920, 1080);
  background(150);
  
  //load our CSV file
  students = loadTable("ExampleClass.csv", "header"); //syntax: loadTable("filename", options); include other parameters like "header" to further describe the document
 
  int rowCount = students.getRowCount(); //get the rowCount of the table
  
  /*loop through our table to print all the values*/
  for(int i = 0; i < rowCount; i++){
    TableRow row = students.getRow(i); //get the ith row and store it in a variable of type TableRow
    String output = ""; //define an empty string to print later
    
    //use the getType("columnName") methods to get individual values out of your row and add them to output
    output += row.getString("Name") + ", "; //use getString to get strings
    output += row.getString("Year") + ", ";
    output += row.getString("Background") + ", ";
    output += row.getInt("Quiz Avg.") + ", "; //use getInt to get integers
    output += row.getInt("HW Avg.") + ", ";
    output += row.getInt("Midterm") + ", ";
    output += row.getInt("Final") + ", ";
    output += row.getInt("Absences");
    
    println(output); //print the output
  }
  
  /*calculate the final grade of each student and add it to the table*/
  students.addColumn("Num. Grade"); //add a column for the final numerical grade of each student
  students.addColumn("Let. Grade"); //add a column for the final letter grade of each student
  float aCount,bCount,cCount,dCount,fCount;//initialize containers to count the frequency of letter grades for the pie chart
  aCount = bCount = cCount = dCount = fCount = 0;
  
  for(int i = 0; i < rowCount; i++){
    TableRow row = students.getRow(i); //get the ith row
    //compute the final grade
    float numGrade = (0.35*row.getInt("HW Avg.")) + 
    (0.15*row.getInt("Quiz Avg.")) + 
    (0.2*row.getInt("Midterm")) + 
    (0.3*row.getInt("Final"));
    
    //use the setType methods to fill in the column value of a row
    row.setFloat("Num. Grade", numGrade); //setFloat sets a float in a field
    
    //convert the final numerical grade into a letter grade
    if(numGrade <= 40){ //F range
      row.setString("Let. Grade", "F");
      fCount++; //increment fCount;
    }else if(numGrade <= 60){ //D range
      row.setString("Let. Grade", "D");
      dCount++; //increment dCount;
    }else if(numGrade <= 80){ //C range
      row.setString("Let. Grade", "C");
      cCount++; //increment cCount;
    }else if(numGrade <= 90){ //B range
      row.setString("Let. Grade", "B");
      bCount++; //increment fCount;
    }else{ //A range
      row.setString("Let. Grade", "A");
      aCount++; //increment aCount;
    }
    
    //print to check that the computed value is the same as the row value now
    //println(row.getString("Name"), numGrade, row.getFloat("Num. Grade"), row.getString("Let. Grade"));
  }
  
  /*draw the pie chart comprised of individual arcs*/
  float angle = 0.0; //initial angle at 0
  
  //red arc for F's
  noStroke();
  fill(255, 0, 0);
  arc(width/2, height/2, 500, 500, angle, angle + (fCount/rowCount)*TWO_PI);
  angle += (fCount/rowCount)*TWO_PI;//increment angle
  
  //orange arc for D's
  fill(255, 150, 0);
  arc(width/2, height/2, 500, 500, angle, angle + (dCount/rowCount)*TWO_PI);
  angle += (dCount/rowCount)*TWO_PI;
  
  //yellow arc for C's
  fill(255, 255, 0);
  arc(width/2, height/2, 500, 500, angle, angle + (cCount/rowCount)*TWO_PI);
  angle += (cCount/rowCount)*TWO_PI;
  
  //blue arc for B's
  fill(0, 0, 255);
  arc(width/2, height/2, 500, 500, angle, angle + (bCount/rowCount)*TWO_PI);
  angle += (bCount/rowCount)*TWO_PI;
  
  //green arc for A's 
  fill(0, 255, 0);
  arc(width/2, height/2, 500, 500, angle, angle + (aCount/rowCount)*TWO_PI);
  angle += (aCount/rowCount)*TWO_PI;  
  
  //uncomment below to actually save the new csv file
  //saveTable(students, "ExampleClassGraded.csv");
}
