/*
P5JS_05_BouncingBall-Classes-Arrays
Author: Alexandros Lotsos
Summary: Instantiating multiple Ball objects using arrays and for-loops (Note that while loops are also the same as Java).
*/

//constants
const cSize = 720; //canvas size
const ellipseRadius = 40; //ellipse size throughout the sketch
const numBalls = 10; // num of Balls in the sketch

//define container for Ball objects
var balls = [];



function setup() {
    //set canvas settings
    createCanvas(cSize, cSize);
    background(150);

    //populate our balls array using push (and not index referencing)
    for(let i = 0; i < numBalls; i++){
        /*proper use of let for a variable in a code block*/
        let x = random(0, width);
        let y = random(0, height);

        balls.push(new Ball(x, y, ellipseRadius, 2, 5));
    }

}

function draw() {
    background(150); //refresh BG

    //loop through the array and reference Ball objects via index
    for(let i = 0; i < numBalls; i++){
        //call class methods
        balls[i].show();
        balls[i].move();
        balls[i].checkCollision();
    }

}

//define classes at the bottom. Remember to use this.field to avoid confusion with other variables throughout the sketch.
class Ball {
    //note the absence of fields. Instead, the constructor sets the fields
    //constructor is just a function without the word function in front of it. You can only have one of them in JS.
    constructor(x = 50, y = 50, rad = 20, xSpeed = 5, ySpeed = 5) { //notice the syntax of setting default values
        this.x = x;
        this.y = y;
        this.rad = rad;
        this.xSpeed = xSpeed;
        this.ySpeed = ySpeed;
    }

    //methods also don't have the word function in them
    show() {
        fill("#ffd1dc")
        noStroke();
        circle(this.x, this.y, this.rad);
    }

    move() {
        this.x += this.xSpeed;
        this.y += this.ySpeed;
    }

    checkCollision() {
        if (this.x > width || this.x < 0) {
            this.xSpeed *= -1;
        }
        if (this.y > height || this.y < 0) {
            this.ySpeed *= -1;
        }
    }
}