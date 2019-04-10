class Circle{
    /*fields & constructor*/
    constructor(x = 0, y = 0, radius = 30, options = {}){
        //keep width and height to use later for drawing
        this.radius = radius;
        //instead of having AAAAll of these fields
        this.body = Bodies.circle(x, y, radius, options);
        //add this body to the world
        World.add(world, this.body);
    }
    /*methods*/
    show(){
        //keep check of the position and rotation of the body
        var position = this.body.position;


        rectMode(CENTER);
        fill(255);
        stroke(0);
        push();
        translate(position.x, position.y);
        ellipse(0, 0, this.radius*2, this.radius*2)
        pop();

    }
}