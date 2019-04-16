/*
P5JS_04_BouncingBall-Classes
Author: Alexandros Lotsos
Summary: The bouncing ball sketch implementing JS classes. Note that classes are a relatively new addition to JS
and there used to be another way of using objects (prototypes). JS classes are similar to java classes except:
    (1) The constructor and the fields are defined together. The constructor sets the fields when it's called.
    (2) Methods don't have a return type or a function identifier. 

Other than that, classes should be familiar to you guys.
*/

var ball;
var ball2;

function setup(){
    createCanvas(720, 720);
    background(150);

    ball = new Ball(50, 50, 100, 2, 10); //same as Java
    ball2 = new Ball(); //if I specify less parameters than the constructor expects, then it'll just use the default values.

    console.log(ball); //notice the console output is really nice for objects in javascript
}

function draw(){
    background(150);

    //call the functions of the ball class
    ball.show();
    ball.move();
    ball.checkCollision();

    ball2.show();
    ball2.move();
    ball2.checkCollision();
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
    show(){
        fill("#ffd1dc")
        noStroke();
        circle(this.x, this.y, this.rad);
    }

    move(){
        this.x += this.xSpeed;
        this.y += this.ySpeed;
    }

    checkCollision(){
        if(this.x > width || this.x < 0){
            this.xSpeed *= -1;
        }
        if(this.y > height || this.y < 0){
            this.ySpeed *= -1;
        }
    }
}