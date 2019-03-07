/*
OOP_04_ParticleBrush.pde
Author: Alexandros Lotsos
Summary: A sketch that uses our ParticleSystem class to give the user a particle brush. Simply maps a particle system
to mouseX, mouseY. The particle's lifespan has been tweaked to make them go away a bit faster.
*/

//define a particle system p1
ParticleSystem p1 = new ParticleSystem();

void setup(){
  size(1920, 1080);
  background(0);
}

void draw(){
  background(0); //refresh bg
  
  //update the position of the particle system to mouseX, mouseY
  p1.origin = new Vector2D(mouseX, mouseY);
  
  //add a particle every frame and run all the particles
  p1.addParticle();
  p1.run();
}
