/*
OOP_06_GunshipInheritance.pde
Author: Alexandros Lotsos
Summary: A sketch that uses our Particle and ParticleSystem classes to create a gunship similar to the one found in the retro
game asteroids. This sketch is meant to serve as an introduction to inheritance and polymorphism, having the Gunship and Bullet
classes that extend ParticleSystem and Particle respectively.
In order to make this sketch possible we've added scalar division, normalization, and magnitude calculations to our Vector2D class.
*/

Gunship ship;

void setup(){
  size(1920, 1080);
  background(0);
  
  fill(255);
  stroke(255);
  
  ship = new Gunship(width/2, height/2);
}

void draw(){
  background(0); //refresh bg
  stroke(255);
  fill(255);
  
  ship.show(); //show the player ship
  ship.run(); //run the player's bullets
  
  //player controls to shoot
  if(mousePressed && frameCount%5 == 0){
    ship.addParticle();
  }
}
