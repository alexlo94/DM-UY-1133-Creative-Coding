/*
Physics_04_Matter-Deletion
Author: Alexandros Lotsos
Summary: A sketch that showcases the proper way to delete matter
objects from your scene. In previous particle systems we would have an
array that we'd remove things from but the Matter World object also keeps
track of every physics body. Deleting an object from one array won't suffice.
*/

//establish module aliases
var Engine = Matter.Engine;
var World = Matter.World;
var Bodies = Matter.Bodies;

//container for our engine and world
var engine;
var world; //note this is new

//container array for our boxes
var boxes = [];

//containers for our platforms
var platform1, platform2, platform3;


function setup(){
    //create canvas as usual
    createCanvas(600, 600);
    
    //create our engine
    engine = Engine.create();
    world = engine.world; //each engine has a world and we want a reference to it

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

        //check if the box is out of bounds
        if(boxes[i].isOutOfBounds()){
            //remove it from the world first!
            World.remove(world, boxes[i].body);
            //remove it from the array of boxes
            boxes.splice(i, 1);
            //set i one value back or you could loop through the array backwards
            i--;
        }
    }

    //check the amount of boxes in the array and in the world
    console.log(boxes.length, world.bodies.length);

}

//mousePressed function will push a box into our array
function mouseDragged(){
    boxes.push(new Box(mouseX, mouseY, random(10, 40), random(10, 40)));
}