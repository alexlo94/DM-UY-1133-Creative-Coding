/*
OOP_09_ParticleMouseAttractor.pde
Author: Alexandros Lotsos
Summary: A particle system that sends particles towards the location of the mouse. This sketch can be generalized such that a
particle system can send particles to any location x,y.
*/

//define a particle system
ParticleSystem p1;

void setup(){
  size(1920, 1080);
  background(0);
  fill(255);
  stroke(255);
  
  //initialize the particlesystem at the middle
  p1 = new ParticleSystem(width/2, height/2);
}

void draw(){
  background(0); //refresh bg
  
  //keep a maximum of 100 particles
  if(p1.particles.size() < 100){
    //calculate the initial position of the particle to be added this frame
    Vector2D pos = new Vector2D(p1.origin.x, p1.origin.y); //start at origin
    pos.add(new Vector2D(random(-100, 100), random(-100, 100))); //add a random jitter
  
    //add the particle at that position
    p1.addParticle(pos);
  }
  
  //loop through the particles to adjust acceleration towards the mouse
  for(int i = 0; i < p1.particles.size(); i++){
    Particle p = p1.particles.get(i); //store current particle
    
    //calculate mouse coordinates relative to the particle
    float mX = mouseX - p.position.x;
    float mY = mouseY - p.position.y;
      
    //accelerate towards the new mouse coordinates
    Vector2D accel = new Vector2D(mX, mY);
    accel.norm();
    accel.mult(0.05);
    p.acceleration = accel;
  }
  
  p1.run();
}
