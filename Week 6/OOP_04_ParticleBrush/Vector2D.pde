/*
Vector2D.pde
Author: Alexandros Lotsos
Summary: A basic 2D vector static class to be used to create vector objects and do vector math for our particle system.
Implements static and non-static methods for the following:
  (1) Addition
  (2) Subtraction
  (3) Scalar Multiplication
*/

static class Vector2D{
  /* fields */
  public float x = 0;
  public float y = 0;
  
  /* constructors */
  
  //blank constructor
  public Vector2D(){
    
  }
  
  //x,y constructor
  public Vector2D(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  /* non-static methods: usable only by objects of the class */
  
  //method to let a vector add another vector to itself
  public void add(Vector2D other){
    this.x += other.x;
    this.y += other.y;
  }
  
  //method to let a vector subtract another vector from itself
  public void sub(Vector2D other){
    this.x -= other.x;
    this.y -= other.y;
  }
  
  //method to let a vector multiply itself with a scalar
  public void mult(float scalar){
    this.x *= scalar;
    this.y *= scalar;
  }
  
  /* static methods: usable without creating an object of the class, but also usable by objects of the class */
  
  //method that adds two vectors and returns the result as a third one
  public Vector2D add(Vector2D v1, Vector2D v2){
    Vector2D result = new Vector2D(v1.x + v2.x, v1.y + v2.y);
    return result;
  }
  
  //method that subtracts two vectors (v2 from v1) and returns the result as a third one
  public Vector2D sub(Vector2D v1, Vector2D v2){
    Vector2D result = new Vector2D(v1.x - v2.x, v1.y - v2.y);
    return result;
  }
  
  //method that multiplies a vector by a scalar
  public Vector2D mult(Vector2D v, float scalar){
    Vector2D result = new Vector2D(v.x * scalar, v.y * scalar);
    return result;
  }
}
