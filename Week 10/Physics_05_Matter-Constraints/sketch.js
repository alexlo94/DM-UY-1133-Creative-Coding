/*
Physics_05_Matter-Constraints
Author: Alexandros Lotsos
Summary: A tutorial on creating Matter constraints without the use of the Matter.Composites module.
A constraint is formally defined as a rigid connection between two separate bodies that keeps them together.
The constraint can:
    (1) Be flexible or completely stiff
    (2) It can vary in length
    (3) Be attached to different points on the two bodies

Note: The constraint is not considered a body itself and will not collide/interact with any other bodies in the world.
*/

//Establish module aliases
var Engine = Matter.Engine;
var World = Matter.World;
var Bodies = Matter.Bodies;
var Constraint = Matter.Constraint; //new module alias for the Constraint functions

//create your engine
var engine = Engine.create();
//save a reference to the engine's world
var world = engine.world;

//2 test bodies
var s1, s2;
//1 constraint to link
var c;
//1 platform to land on
var plat;

function setup(){
    //create canvas as usual
    createCanvas(600, 600);
    background(150);

    //initialize boxes
    s1 = new Circle(200, 50, 40);
    s2 = new Circle(260, 20, 20, {restitution: 1}); //add restitution for some bounciness
    //initialize platform
    plat = new Platform(300, 400, width, 30);

    /*create options for the constraint. Options must have:
        (1) bodyA and bodyB -> the two bodies being linked.
        (2) length -> The length of the constraint at rest (think of a spring).

      (SEMI-OPTIONAL) pointA and pointB -> the points to which the constraint attaches to
      Other options like stiffness and damping are available but are completely optional
    */
    var options = {
        bodyA: s1.body, //note the use of .body here.
        bodyB: s2.body,
        length: 100,
    }
    //create the constraint passing in our options, syntax: Constraint.create(options)
    c = Constraint.create(options);
    console.log(c);

    //add the constraint to the world
    World.add(world, c);

    //run the engine
    Engine.run(engine);
}

function draw(){
    background(150);

    //show the boxes
    s1.show();
    s2.show();
    //show the platform
    plat.show();

    stroke(0);
    //show the constraint with a line
    line(s1.body.position.x, s1.body.position.y, s2.body.position.x, s2.body.position.y);
}