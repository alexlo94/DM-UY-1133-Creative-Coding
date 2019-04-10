/*
Platform.js
Author: Alexandros Lotsos
Summary: A wrapper class that draws a p5 rectangle with the functionality of a matter box
to simulate a platform
*/

class Platform{
    /*constructor: note the default options setting it to static*/
    constructor(x = 0, y = 0 , w = 20, h = 20, options = {isStatic: true}){
        //save the width and height as fields
        this.w = w;
        this.h = h;
        //make this a Matter body and save it as a field
        this.body = Bodies.rectangle(x, y, w, h, options);
        //add this to the world
        World.add(engine.world, this.body);
    }

    show(){
        //notice how I need only one field for all my info!
        var pos = this.body.position;
        var angle = this.body.angle;

        //draw the rectangle according to the body data
        push();
        translate(pos.x, pos.y);
        rotate(angle);
        rectMode(CENTER);
        fill(0);
        noStroke();
        rect(0, 0, this.w, this.h);
        pop();
    }
}