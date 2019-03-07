/*
OOP_02_ParticleSystem.pde
Author: Alexandros Lotsos
Summary: A particle system that is based on two classes: Particle and Vector2D. Will generate a fountain of particles in the middle of the screen.
Tweak the velocity/position/acceleration of each particle in the particle class to get a different shape particle.
Uses an arraylist rather than an array to circumvent problems with the fixed length of the array.
*/

//define an arraylist of Particle objects. Note the syntax: ArrayList<DataType> name = new ArrayList<DataType>();
//An arraylist is just an array of flexible size, similar to lists in python and arrays in javascript
ArrayList<Particle> particles = new ArrayList<Particle>();

//the starting point of the particle system
Vector2D origin;

void setup(){
  size(1920, 1080);
  background(0);
  
  origin = new Vector2D(width/2, height/2);
}

void draw(){
  background(0);
  
  //add a particle to the arraylist each frame
  particles.add(new Particle(origin));
  
  //loop through all available particles
  for(int i = 0; i < particles.size(); i++){
    Particle p = particles.get(i); //store the current particle
    p.show(); //show it
    p.move(); //move it
    
    //check if the particle is dead and if so remove it
    if(p.isDead()){
      particles.remove(i);
    }
  }
}
