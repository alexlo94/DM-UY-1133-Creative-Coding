/*
Physics_07_Matter-MouseConstraint
Author: Alexandros Lotsos
Summary: An extension of Physics_06 that incorporates mouse controls using the Matter.js mouse constraint system.
We've seen that constraints in Matter are responsible for linking two bodies and having them continuously interact.
Mouse controls are therefore implemented by enabling a constraint that has the mouse itself as bodyA and specifies as bodyB
whatever the mouse clicks on.
As long as the mouse button is held down that constraint persists and allows users to click and drag things around.

Including the mouseControl function and the Constraint/Mouse/MouseConstraint aliases into any matter.js sketch will
enable mouse controls
*/

//establish module aliases
var Engine = Matter.Engine;
var World = Matter.World;
var Bodies = Matter.Bodies;
var Constraint = Matter.Constraint;
var Mouse = Matter.Mouse; //note the new Mouse module
var MouseConstraint = Matter.MouseConstraint; //note the new MouseConstraint module

//create your engine
var engine = Engine.create();
//save a reference to your world
var world = engine.world;

//container for our circle objects
var circles = [];

//container for our constraint objects
var constraints = [];

//containers for our MouseConstraint object and Canvas object
//(Yes we're storing the canvas in a variable to make this work)
var mc;
var cnv;

function setup(){
    cnv = createCanvas(600,600);
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

    //add mouse controls to the scene
    mouseControls(cnv);

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

//function to add mouse controls to any matter/p5.js sketch
//Takes a canvas object as a parameter, returns the mouseConstraint object for debug purposes
function mouseControls(canvas){
    //create mouse object that listenst to the canvas for events
    let m = Mouse.create(canvas.elt);
    //debug print statement for the mouse
    //console.log(m);
    //set the mouse pixelRatio to be the same as the ratio of your screen
    //This is a built in p5 function that detects the density of a given display
    //Without this, mouse controls won't function of the PD of the mouse doesn't match that of the screen
    m.pixelRatio = pixelDensity();

    //options for mouse constraint
    let options = {
        mouse: m,
    }
    //create the mouse constraint
    let c = MouseConstraint.create(engine, options);
    //debug print statement for the mouseConstraint
    //console.log(c);

    //add the constraint to the world
    World.add(world, c);

    return c;
}