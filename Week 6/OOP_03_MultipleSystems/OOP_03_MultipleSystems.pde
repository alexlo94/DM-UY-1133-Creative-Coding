/*OOP_03_MultipleSystems.pde
Author: Alexandros Lotsos
Summary: An extension of OOP_02 that implements a ParticleSystem class in addition to Particle and Vector2D to have multiple particle systems on the canvas.
Particle and Vector2D remain unchanged.
*/

  
  //define 4 particle systems
  ParticleSystem p1;
  ParticleSystem p2;
  ParticleSystem p3;
  ParticleSystem p4;


void setup(){
  size(1920, 1080);
  background(0);
  
  //intialize and position them
  p1 = new ParticleSystem(200, 200);
  p2 = new ParticleSystem(width - 200, 200);
  p3 = new ParticleSystem(200, height - 200);
  p4 = new ParticleSystem(width - 200, height - 200);
}

void draw(){
  background(0);
  
  //add particles to the systems
  p1.addParticle();
  p2.addParticle();
  p3.addParticle();
  p4.addParticle();
  
  //run the particle systems
  p1.run();
  p2.run();
  p3.run();
  p4.run();
}
