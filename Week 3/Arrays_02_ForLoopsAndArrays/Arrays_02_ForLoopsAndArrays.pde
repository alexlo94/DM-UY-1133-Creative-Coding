/*
Arrays_02_ForLoopsAndArrays.pde
Author: Alexandros Lotsos
Summary: With basic array syntax in mind, this sketch showcases the close relationship between loops and arrays
*/

/*
Since arrays contain elements that are referred to by their index (which is a number that always ranges from 0 to length - 1),
for loops can be used efficiently populate, iterate through, and manipulate array values. Let's try to use some for loops to create
arrays that contain different ints.
*/

void setup(){
  int[] nums = new int[10]; //declare an array of length 10
  println(nums);
  
  //fill it up with the numbers from 0 to 9. Notice how nums.length denotes the lenght of the array
  for(int i = 0; i < nums.length; i++){
    nums[i] = i; //the ith element of the array should have the value of i.
  }
  println(nums);
  
  //loop through nums and make it an array of even numbers  
  for(int i = 0; i < nums.length; i++){
    nums[i] *= 2;
  }
  println(nums);
  
  //let's iterate through our array and make a better print statement so that our console output is more legible
  for(int i = 0; i < nums.length; i++){
    //check if we're on the first or last element of the array
    if(i == 0){
      print("{" + nums[i] + ", ");
    }else if(i == nums.length - 1){
      print(nums[i] + "}" + "\n");
    }else{
      print(nums[i] + ", ");
    }
  }
  
  //in general, arrays won't lend themselves well to print statements or other display methods and you will need to use for loops
  //like the ones above to access each element and deal with it separately.
}
