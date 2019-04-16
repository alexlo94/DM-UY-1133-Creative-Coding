/*
Physics_06_Matter-Chains
Author: Alexandros Lotsos
Summary: A sketch that shows how to use Matter constraints to create chains of objects.
*/

//establish module aliases
var Engine = Matter.Engine;
var World = Matter.World;
var Bodies = Matter.Bodies;
var Constraint = Matter.Constraint;

//create your engine
var engine = Engine.create();
//save a reference to your world
var world = engine.world;

//container for our circle objects
var circles = [];

//container for our constraint objects
var constraints = [];

function setup(){
    createCanvas(600,600);
    background(150);

    //push 10 circle objects onto our circles array, making the first one static
    for(let i = 0; i < 10; i++){
        let c;
        if(i === 0){
            c = new Box(200 + 20*i, 50, 10, 10, {isStatic: true});
        } else{
            c = new Circle(200 + 20*i, 50, 10);
        }
        circles.push(c);
    }

    //create the links based on the circles array. Note the boolean condition stopping 1 place before
    for(let i = 0; i < circles.length - 1; i++){
        //set up options object, note the absence of length
        //add a negative length for some fun
        let options = {
            bodyA: circles[i].body,
            bodyB: circles[i + 1].body,
            stiffness: 0,
        }
        //create a link
        let l = Constraint.create(options)
        //push it to the constraints array
        constraints.push(l);
    }

    //add the constraints to the world
    World.add(world, constraints);

    //run the engine
    Engine.run(engine);
    


}

function draw(){
    background(150);

    //loop through the circles and show them
    for(let i = 0; i < circles.length; i++){
        circles[i].show();
    }

}