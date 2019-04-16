/*
Local_JSON-Intro.pde
Author: Alexandros Lotsos
Summary: An introductory sketch that works with a local .json (JavaScript Object Notation) file. This sketch goes over the basics
of loading and parsing a .json file, accessing and manipulating its values, and using them to create data-driven sketches in
Processing. 
The dataset "ExampleClass.json" contains random data regarding the students of an imaginary programming class.
Each object represents a student and its values are:
  (1) Name: The name of the student
  (2) Year: The current academic year of the student (freshman, sophomore etc.)
  (3) Background: Prior experience in programming (novice, intermediate, advanced)
  (4) Quiz Avg.: The average quiz grade of the student
  (5) Homwork Avg.: The average homework grade of the student
  (6) Midterm: The midterm grade of the student
  (7) Final: The final exam grade of the student
  (8) Absences: The number of absences a student had
  
After loading, this sketch will use the data to compute a final, cumulative grade for each student and add those values to the
dataset. The sketch will ultimately produce a pie chart detailing how many students got A's, B's etc. but pay closer attention
to the data access and manipulation rather than the visualization for this sketch.
*/

//use the JSONArray class to store multiple JSON objects at once since most JSON files contain multiple objects.
JSONArray students;

void setup(){
  //set canvas parameters
  size(600, 600);
  background(150);
  
  //load JSON file
  students = loadJSONArray("ExampleClass.json");
  
  //JSON objects are nicer and can be printed directly
  //println(students);
  
  /*Go through the dataset and compute the final numerical grade for each student*/
  float aCount,bCount,cCount,dCount,fCount;//initialize containers to count the frequency of letter grades for the pie chart
  aCount = bCount = cCount = dCount = fCount = 0;
  
  for(int i = 0; i < students.size(); i++){ //use .size() to traverse the JSONArray
    //save the current student
    JSONObject student = students.getJSONObject(i);
    
    //compute the final grade using the getType methods
    float numGrade = (0.35*student.getInt("HW Avg.")) + 
    (0.15*student.getInt("Quiz Avg.")) + 
    (0.2*student.getInt("Midterm")) + 
    (0.3*student.getInt("Final"));
    
    //use the setType methods to set a new field in an object
    student.setFloat("Num. Grade", numGrade);
    
    //convert the final numerical grade into a letter grade
    if(numGrade <= 40){ //F range
      student.setString("Let. Grade", "F");
      fCount++; //increment fCount;
    }else if(numGrade <= 60){ //D range
      student.setString("Let. Grade", "D");
      dCount++; //increment dCount;
    }else if(numGrade <= 80){ //C range
      student.setString("Let. Grade", "C");
      cCount++; //increment cCount;
    }else if(numGrade <= 90){ //B range
      student.setString("Let. Grade", "B");
      bCount++; //increment fCount;
    }else{ //A range
      student.setString("Let. Grade", "A");
      aCount++; //increment aCount;
    }
  }
  
  /*draw the pie chart comprised of individual arcs*/
  float angle = 0.0; //initial angle at 0
  
  //red arc for F's
  noStroke();
  fill(255, 0, 0);
  arc(width/2, height/2, 500, 500, angle, angle + (fCount/students.size())*TWO_PI);
  angle += (fCount/students.size())*TWO_PI;//increment angle
  
  //orange arc for D's
  fill(255, 150, 0);
  arc(width/2, height/2, 500, 500, angle, angle + (dCount/students.size())*TWO_PI);
  angle += (dCount/students.size())*TWO_PI;
  
  //yellow arc for C's
  fill(255, 255, 0);
  arc(width/2, height/2, 500, 500, angle, angle + (cCount/students.size())*TWO_PI);
  angle += (cCount/students.size())*TWO_PI;
  
  //blue arc for B's
  fill(0, 0, 255);
  arc(width/2, height/2, 500, 500, angle, angle + (bCount/students.size())*TWO_PI);
  angle += (bCount/students.size())*TWO_PI;
  
  //green arc for A's 
  fill(0, 255, 0);
  arc(width/2, height/2, 500, 500, angle, angle + (aCount/students.size())*TWO_PI);
  angle += (aCount/students.size())*TWO_PI;
}
