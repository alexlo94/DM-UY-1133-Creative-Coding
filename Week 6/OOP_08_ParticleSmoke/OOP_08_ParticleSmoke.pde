/*
OOP_08_ParticleSmoke.pde
Author: Alexandros Lotsos
Summary: A sketch that uses our Particle and ParticleSystem classes to create a rising smoke effect.
*/

//define a particle system
ParticleSystem p1;

void setup(){
  size(1920, 1080);
  background(0);
  fill(255);
  stroke(255);
  
  //initialize the particle system at the origin
  p1 = new ParticleSystem(width/2, height/2);
}

void draw(){
  background(0);
  
  //calculate the position, velocity and acceleration of the new particle to be added
  Vector2D pos = p1.origin; //start at origin
  Vector2D vel = new Vector2D(random(-0.7, 0.7), random(-2, 0)); //make a cone of velocity vecors
  Vector2D accel = new Vector2D(0, -0.02); //slight upward acceleration
  
  p1.addParticle(pos, vel, accel);
  
  p1.run();
  
}
