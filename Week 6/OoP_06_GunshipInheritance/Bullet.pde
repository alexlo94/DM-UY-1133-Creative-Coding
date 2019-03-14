/*
Bullet.pde
Author: Alexandros Lotsos
Summary: A bullet class that extends Particle, meant to be shot by the gunship. Adds an extra constructor that takes in velocity
and acceleration so that we can have more control over where our bullets are shot.
*/

class Bullet extends Particle{
  /*fields are all inherited from Particle*/
  float radius = 25; //overwrite the radius field
  
  /*constructors*/
  //bullet constructor that lets us specify position, velocity and acceleration
  //partially makes use of the super constructor in the Particle class
  public Bullet(Vector2D pos, Vector2D vel, Vector2D acc){
    super(pos); //call the Particle constructor to avoid code duplication
    this.velocity.x = vel.x;
    this.velocity.y = vel.y;
    this.acceleration.x = acc.x;
    this.acceleration.y = acc.y;
  }
  
  /*methods are all inherited from Particle*/
  //TODO: add collision checking to the bullets
  
  //override method to show the bullet
  public void show(){
    stroke(255, 0, 0, lifespan);
    fill(255, 0, 0, lifespan);
    ellipse(position.x, position.y, this.radius, this.radius);
  }
}
