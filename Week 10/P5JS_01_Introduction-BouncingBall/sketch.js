/*
P5JS_01_Introduction-BouncingBall
Author: Alexandros Lotsos
Summary: A recreation of the classic bouncing ball sketch we did in processing.
The sketch will have a single bouncing ball and will cover:
    (1) Variable declaration
    (2) Arithmetic
    (3) Conditional statements

Most p5.js specific functions are identical to the processing ones (i.e. rect and ellipse).
Whenever there's a difference there will be a comment indicating so.
*/

/*defining variables with const: read-only variables that can never be reassigned throughout the sketch*/
const cSize = 720; //constant for canvas size
const ellipseSize = 20; //constant for ellipse size

/*defining variables with var: global scope variables that can be changed throughout the sketch*/
var x, y; //x and y position of the ball
var xSpeed, ySpeed; //x and y speed of the ball

/*setup is the same as processing*/
function setup() {
    createCanvas(cSize, cSize); //size(x, y) in processing
    background(150); //same as processing
    fill("#ffd1dc"); //works like processing, including rgb and hex
    noStroke(); //same

    /*assign values to global variables*/
    x = y = cSize/2;
    xSpeed = 5;
    ySpeed = 2;
}

/*draw is the same as processing, runs the sketch's frames as fast as possible*/
function draw() {
    background(150); //refresh bg

    circle(x, y, ellipseSize*2); //draw the ellipse. circle actually exists in processing too

    x += xSpeed; //increment x
    y += ySpeed; //increment y

    /*conditional statements, boolean expressions etc. are largely the same in javaScript and Java*/
    if(x > width - ellipseSize || x < ellipseSize){
        xSpeed *= -1;
    }
    if(y > height - ellipseSize || y < ellipseSize){
        ySpeed *= -1;
    }
}