/*
Gunship.pde
Author: Alexandros Lotsos
Summary: A gunship class that extends ParticleSystem. The gunship will render as an equilateral triangle and stay anchored to
a position x,y and rotate to face the mouse. It acts as an emitter that uses Bullet particles, shooting them towards the mouse.
Replicates the ship from the retro game asteroids.
*/

class Gunship extends ParticleSystem{
  
  /*fields are completely inherited from ParticleSystem*/
  float size = 50; //add a field for the size of the gunship
  float bulletSpeed = 10; //add a field for the speed of the bullets shot by the ship
  
  /*constructors*/
  //blank constructor will call ParticleSystem constructor
  public Gunship(){
    super(); //super is used to call the constructor of the superclass, in this case ParticleSystem's blank constructor
  }
  
  //constructor to place the Gunship at x,y will call the corresponding ParticleSystem constructor
  public Gunship(float x, float y){
    super(x, y); //you can pass in parameters to the super keyword to call the appropriate constructor.
  }
  
  /*methods are completely inherited from ParticleSystem*/
  
  //add a method for the gunship to show itself
  //gunship will always rotate to face the mouse
  void show(){
    pushMatrix();
    
    //translate the canvas to the origin
    translate(origin.x, origin.y);
    
    //calculate new mouse coordinates
    float mX = mouseX - origin.x;
    float mY = mouseY - origin.y;
    
    //draw a debug line to the mouse. Comment this out later
    line(0, 0, mX, mY);
    
    //calculate the angle of rotation based on mouse position
    float a = atan2(mY, mX); //returns values from -PI to PI
    a += PI/2; //add PI/2 to offset the range that atan2 returns
    
    //rotate by the angle
    rotate(a);
    
    //draw the triangle
    triangle(-this.size, this.size, 0, -this.size, this.size, this.size); 
    
    popMatrix();
  }
  
  //method for the gunship to shoot. Adds bullet objects to the particle arraylist
  void addParticle(){
    //calculate new mouse coordinates
    float mX = mouseX - origin.x;
    float mY = mouseY - origin.y;
    
    //make a directional vector towards the mouse
    Vector2D direction = new Vector2D(mX, mY);
    
    //normalize the direction
    direction.norm();
    
    //multiply it by the bullet speed
    direction.mult(bulletSpeed);
    
    //shoot a bullet in that direction. Adding bullets to the particle arrayList is possible because bullets ARE particles
    particles.add(new Bullet(origin, direction, new Vector2D(0,0)));
  }
}
