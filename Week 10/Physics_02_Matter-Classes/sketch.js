/*
Physics_02_Matter-Classes
Author: Alexandros Lotsos
Summary: A rework of Physics_01 using classes to couple the mathematical functionality that Matter offers us,
along with the drawing functionality that p5 offers us. Check out the Box.js and Platform.js files  for more info
*/

//Establish module aliases
var Engine = Matter.Engine;
var World = Matter.World;
var Bodies = Matter.Bodies;

//Engine container
var engine;

//two box and one platform container
var box1;
var box2;
var platform;
var platform1;
var platform2;

function setup(){
    //create canvas as usual
    createCanvas(600, 600);
    background(150);

    //create the engine
    engine = Engine.create();

    //create the two boxes and the platform
    box1 = new Box(200, 0, 20, 20);
    box2 = new Box(400, 0, 20, 20);

    //note how starting angle is specified in the options
    var platformOptions = {
        isStatic: true,
        angle: 0, //this is a straight platform
    };
    platform = new Platform(width/2, height - 150, width/2, 40, platformOptions);

    var platform1Options = {
        isStatic: true,
        angle: PI/4,
    }
    var platform2Options = {
        isStatic: true,
        angle: -PI/4,
    }
    platform1 = new Platform(width/4, height - 250, width/4, 40, platform1Options);
    platform2 = new Platform(3*width/4, height - 250, width/4, 40, platform2Options);

    //run the engine
    Engine.run(engine);
}

function draw(){
    //refresh bg
    background(150);

    //show my boxes!
    box1.show();
    box2.show();
    platform.show();
    platform1.show();
    platform2.show();

}