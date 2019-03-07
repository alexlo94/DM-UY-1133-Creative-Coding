/*
OOP_05_ParametricParticles.pde
Author: Alexandros Lotsos
Summary: A sketch that changes our ParticleSystem class to take in parameters x,y so we can spawn particles around a central
location using polar (or any other) coordinates. This example sets:
  x = r * cos(θ);
  y = r * sin(θ);
But as we saw in week 5, we can have x and y equal to any coherent parametric equation.

NOTE: Check the run() and addParticle() functions of the particleSystem to see how we make use of translate to keep the particles in the right place.
*/

//define our particle systems
ParticleSystem circular; //this particle system will have its particles arranged in a circle around its origin
ParticleSystem notCircular; //this particle system will have its particles spawn on its origin

//main parameter for the parametric path that the circular particles will spawn along
float maxAngle = 0.0; //starts at 0;

void setup(){
  size(1920,1080);
  background(0);
  
  //set origin to the center of the canvas
  Vector2D origin = new Vector2D(width/2, height/2);
  
  circular = new ParticleSystem(origin); //new particle system at the origin
  notCircular = new ParticleSystem(origin); //note how the placement is the same
}

void draw(){
  background(0); //refresh bg
  
  //trace the circular path using the parametric equation
  float r = 400; //the radius of the circle
  float x = r * cos(maxAngle); //x coord based on polar coordinates
  float y = r * sin(maxAngle); //y coord based on polar coordinates
    
  Vector2D particleLocation = new Vector2D(x, y); //new vector to the computed x,y coordinates
    
  circular.addParticle(particleLocation);
  notCircular.addParticle(); //add particles to the x,y location
  
  maxAngle += 0.1; //up the maxAngle
  
  circular.run();
  notCircular.run();//run the particle systems.
}
