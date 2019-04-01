/*
Particle.pde
Author: Alexandros Lotsos
Summary: A simple particle class that gives every particle a position, velocity, acceleration, lifespan using Vector2D.
*/

class Particle{
  
  /* fields */
  //position velocity acceleration of the particle
  public Vector2D position = new Vector2D(0, 0);
  public Vector2D velocity = new Vector2D(random(-1, 1), random(-1, 1));
  public Vector2D acceleration = new Vector2D(random(-0.05, 0.05), random(-0.05, 0.05));
  
  public float radius = random(10, 50); //radius of the particles
  public float lifespan = 255; //lifespan of the particle tied to its alpha value (transparency)
  //consider adding a color to try and make your particles more customizable
  
  /* constructors: add new ones to customize your particle system */
  
  //blank constructor
  public Particle(){
    
  }
  
  //constructor that takes a position vector
  public Particle(Vector2D origin){
    this.position.x = origin.x;
    this.position.y = origin.y;
  }
  
  //constructor that takes position and velocity vector
  public Particle(Vector2D origin, Vector2D vel){
    this.position.x = origin.x;
    this.position.y = origin.y;
    this.velocity.x = vel.x;
    this.velocity.y = vel.y;
  }
  
  //constructor that takes position, velocity, and acceleration vector
  public Particle(Vector2D origin, Vector2D vel, Vector2D accel){
    this.position.x = origin.x;
    this.position.y = origin.y;
    this.velocity.x = vel.x;
    this.velocity.y = vel.y;
    this.acceleration.x = accel.x;
    this.acceleration.y = accel.y;
  }
  
  /* non-static methods */
  
  //method to move the particle
  void move(){
    velocity.add(acceleration);
    position.add(velocity);
    lifespan -= 2.0; //tweak the alpha value
  }
  
  //method to draw the particle
  void show(){
    stroke(255, lifespan);
    fill(255, lifespan);
    ellipse(position.x, position.y, this.radius, this.radius);
  }
  
  //method to check whether the particle is dead
  boolean isDead(){
    return (lifespan < 0.0);
  }
}
