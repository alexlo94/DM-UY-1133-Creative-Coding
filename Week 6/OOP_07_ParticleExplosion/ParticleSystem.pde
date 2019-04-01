/*
ParticleSystem.pde
Author: Alexandros Lotsos
Summary: A class to provide a quick way to create multiple systems of particles in the same sketch without duplicating code.
Each ParticleSystem object is comprised of an arraylist of particles and implements methods to:
  (1)Show its particles
  (2)Move its particles
  (3)Check if a particle is dead and remove it from the arraylist
  (4)Add a particle to the arraylist
*/

class ParticleSystem{
  
  /* fields */
  ArrayList<Particle> particles = new ArrayList<Particle>(); //the particles of this system
  Vector2D origin = new Vector2D(0, 0); //the position that all the particles come from
  
  /* constructors */
  
  //blank constructor
  public ParticleSystem(){
  }
  
  //constructor that positions the particle system based on a vector argument
  public ParticleSystem(Vector2D o){
    origin.x = o.x;
    origin.y = o.y;
  }
  
  //constructor that positions the particle system based on two floats
  public ParticleSystem(float x, float y){
    origin.x = x;
    origin.y = y;
  }
  
  /* methods */
  
  //method to make each particle in the arraylist show and move itself, and then remove any dead particles (i.e. run the particle system)
  public void run(){
    //loop through the particle system
    for(int i = 0; i < particles.size(); i++){
      Particle p = particles.get(i); //store the current particle
      p.show(); //show it
      p.move(); //move it
      
      if(p.isDead()){
        particles.remove(i);
      }
    }
  }
  
  //method to add a particle into the particle system
  //can you change this method so that sketches can draw with particles?
  public void addParticle(){
    particles.add(new Particle(origin));
  }
  
  //method to add a particle with a specific position
  public void addParticle(Vector2D pos){
    particles.add(new Particle(pos));
  }
  
  //method to add a particle with a specific position and velocity
  public void addParticle(Vector2D pos, Vector2D vel){
    particles.add(new Particle(pos, vel));
  }
  
  //method to add a particle with a specific position, velocity and acceleration
  public void addParticle(Vector2D pos, Vector2D vel, Vector2D accel){
    particles.add(new Particle(pos, vel, accel));
  }
  
}
