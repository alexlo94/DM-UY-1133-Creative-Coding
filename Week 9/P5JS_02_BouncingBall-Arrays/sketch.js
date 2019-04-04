/*
P5JS_02_BouncingBall-Arrays
Author: Alexandros Lotsos
Summary: A recreation of the bouncing ball sketch that uses for loops and arrays
to add multiple balls to the canvas.
*/

const cSize = 720; //constant for canvas size
const ellipseSize = 20; //constant for ellipse size
const numBalls = 6; //constant for number of balls in the sketch

/*
Arrays in javascript are actually just arraylists from java.
They are lists of flexible size that can be manipulated via push and pop
*/

/*arrays for position and speeds*/
var xPos = [];
var yPos= [];
var xSpeed = [];
var ySpeed = [];

function setup(){
    //set canvas parameters
    createCanvas(cSize, cSize);
    background(150);
    fill("#ffd1dc");
    noStroke();

    /*Use a for loop to populate our arrays. Notice how it's largely the same*/
    for(var i = 0; i < numBalls; i++){
        /*What's weird about this???*/
        xPos[i] = random(0, width); //accessing array elements works the same
        yPos[i] = random(0, height);
        xSpeed[i] = random(-5, 5);
        ySpeed[i] = random(-5, 5);
    }
}

function draw(){
    background(150);

    //loop through all our arrays
    for(var i = 0; i < numBalls; i++){
        //draw the ellipse
        circle(xPos[i], yPos[i], ellipseSize);

        //increment positions
        xPos[i] += xSpeed[i];
        yPos[i] += ySpeed[i];

        //check for collisions
        if(xPos[i] > width || xPos[i] < 0){
            xSpeed[i] *= -1;
        }
        if(yPos[i] > height || yPos[i] < 0){
            ySpeed[i] *= -1;
        }
    }
}