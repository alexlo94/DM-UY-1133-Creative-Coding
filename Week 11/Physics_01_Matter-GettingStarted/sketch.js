/*
Physics_01_Matter-GettingStarted
Author: Alexandros Lotsos
Summary: An introduction to the Matter.js physics engine and how it's used alongside a library like p5.js.
This example is a basic, bare-bones demonstration of some of the key concepts behind the engine including:
 (1) Module Aliases
 (2) The concept of a World object
 (3) The distinction between Bodies and Shapes
 (4) Initializing a World
 (5) Adding object definitions to your world
 (6) Running a world

These are concepts that more or less exist in most physics engines so try to think generally
*/

//Module aliases: using variables as shorthand for calling namespaced classes
const Engine = Matter.Engine; //Note: All I'm doing here is establishing a shorthand convention
const World = Matter.World;
const Bodies = Matter.Bodies;
 
//container for our engine
var engine;

//containers for our boxes
var box1;
var box2;
var platform;

function setup(){
    //define our canvas and parameters as usual
    createCanvas(600, 600);
    rectMode(CENTER); //matter.js rectangles are drawn from the center

    //create our engine
    engine = Engine.create();

    //create our MATTER boxes. Note these are different than p5 rectangles
    //these are just numbers that we can use to actually draw our p5 rectangles on the screen
    box1 = Bodies.rectangle(100, 0, 30, 30); //syntax: Bodies.rectangle(posX, posY, w, h, {options}*)
    box2 = Bodies.rectangle(300, 0, 30, 30);
    platform = Bodies.rectangle(width/2, height - 100, width, 60, {isStatic: true}); //*note the use of the options object/dictionary

    //add our boxes to the world
    World.add(engine.world, [box1, box2, platform]); //syntax: World.add(engine, [items])

    //run the engine.
    //Note that this is like a separate draw loop for calculating numbers pertaining to our boxes
    //once we call this, the physics engine will have its own 'frames' that we can use in draw
    Engine.run(engine);
}

function draw(){
    //refresh the background as usual
    background(50);

    //check the box1 and box 2 variables for data to draw our rectangles with
    fill(170);
    noStroke();
    rect(box1.position.x, box1.position.y, 30, 30); //rect for box1
    rect(box2.position.x, box2.position.y, 30, 30); //rect for box2
    fill(240);
    rect(platform.position.x, platform.position.y, width, 60); //rect for the platform
}