/*
OOP_07_ParticleExplosion.pde
Author: Alexandros Lotsos
Summary: Use of our Particle and ParticleSystem classes to create an explosion effect. We've added another version of the
addParticle method to the particleSystem class that takes in position velocity and acceleration to let us control our particles
more finely.

Explosions are usually characterized by adding many particles at once to the arrayList rather than one each frame. Tweak the
velocity and acceleration of each particle to get a different shape or type of explosion.
*/

//define a particle system 
ParticleSystem p1;

void setup(){
  size(1920, 1080);
  background(0);
  fill(255);
  stroke(255);
  
  //initialize particle system at center of canvas
  p1 = new ParticleSystem(width/2, height/2);
}

void draw(){
  background(0); //refresh bg
  
  //check if the explosion has ended, i.e. the arraylist is empty
  if(p1.particles.size() == 0){
    //add 100 particles
    for(int i = 0; i < 100; i++){
      //determine particle position, velocity, acceleration
      Vector2D pos = p1.origin; //start at the middle
      Vector2D vel = new Vector2D(random(-2, 2), random(-2, 2)); //random radial velocity
      Vector2D accel = new Vector2D(0, 0); //zero acceleration, add a y-acceleration to simulate gravity 
      
      p1.addParticle(pos, vel, accel);
    }
  }
  
  p1.run();
}
