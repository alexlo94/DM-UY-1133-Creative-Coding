/*
Particle.pde
Author: Alexandros Lotsos
Summary: A simple particle class that gives every particle a position, velocity, acceleration, lifespan and color using Vector2D.
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
  
  /* non-static methods */
  
  //method to move the particle
  void move(){
    velocity.add(acceleration);
    position.add(velocity);
    lifespan -= 1.0; //tweak the alpha value
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
