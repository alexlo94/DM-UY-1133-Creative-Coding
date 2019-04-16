/*
Physics_03_Matter-Arrays
Author: Alexandros Lotsos
Summary: Incorporating user controls to programmatically spawn physics entities
using the box/platform classes from the previous sketch. Notice the eventual slowdown
of the sketch. This will be addressed in the next sketch.
*/

//establish module aliases
var Engine = Matter.Engine;
var World = Matter.World;
var Bodies = Matter.Bodies;

//container for our engine
var engine;

//container array for our boxes
var boxes = [];

//containers for our platforms
var platform1, platform2, platform3;


function setup(){
    //create canvas as usual
    createCanvas(600, 600);
    
    //create our engine
    engine = Engine.create();

    //define our platforms
    platform1 = new Platform(300, 450, width, 30);
    platform2 = new Platform(200, 350, width/4, 30, {isStatic: true, angle: PI/4});
    platform3 = new Platform(400, 350, width/4, 30, {isStatic: true, angle: -PI/4});

    //run our engine
    Engine.run(engine);

}

function draw(){
    background(150);

    //show our platforms
    platform1.show();
    platform2.show();
    platform3.show();

    //loop through all the boxes and show them
    for(let i = 0; i < boxes.length; i++){
        boxes[i].show();
    }

}

//mousePressed function will push a box into our array
function mouseDragged(){
    boxes.push(new Box(mouseX, mouseY, random(10, 40), random(10, 40)));
}