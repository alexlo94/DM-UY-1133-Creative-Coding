
const cSize = 720; //canvas size
const ellipseSize = 20; //ellipse size

var x, y; //position
var xSpeed = 2;
var ySpeed = 5; //speeds

function setup(){
    //set canvas parameters
    createCanvas(cSize, cSize);
    background(150);
    fill("#ffd1dc");
    noStroke();

    //initialize x, y
    x = random(0, width);
    y = random(0, height);

}

//use our functions in draw
function draw(){
    background(150); //refresh bg

    show(); //show the ellipse
    move(); //move the ellipse
    checkCollision(); //check for collisions
}

/*define a function with the function keyword.
No return type necessary*/

//function to show the ball
function show(){
    circle(x, y, ellipseSize);
}

//function to move the ball
function move(){
    x += xSpeed;
    y += ySpeed;
}

function checkCollision(){
    if(x > width || x < 0){
        xSpeed *= -1;
    }
    if(y > height || y < 0){
        ySpeed *= -1;
    }
}