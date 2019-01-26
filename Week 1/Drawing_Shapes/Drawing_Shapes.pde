//Drawing_Shapes.pde
//Author: Alexandros Lotsos
/*Summary: The purpose of this sketch is to introduce you to the basic shapes that you can draw with processing. */

//setup is only called once for initialization
void setup(){
  
  //canvas width and height
  size(1350, 1200);
  
  //draws a point. syntax: point(x,y). You probably won't notice this drawn since it's just a point...
  point(100, 500);
  
  //draws a line between two points. syntax: line(x1,y1,x2,y2)
  line(200, 100, 200, 400);
  
  //draws a triangle between three points. syntax: triangle(x1,y1,x2,y2,x3,y3)
  triangle(400, 200, 550, 100, 600, 400);
  
  //draws a quad between any four points. syntax: quad(x1,y1,x2,y2,x3,y3,x4,y4)
  quad(800, 400, 900, 100, 1000, 100, 1100, 400);
  
  //draws a rectangle at coordinates posX,posY with a width w and a height h. syntax: rect(posX,posY,w,h)
  rect(200, 525, 400, 250);
  
  //draws an ellipse at coordinates posX,posY with a width w and a height h. syntax: ellipse(posX,posY,w,h)
  //can you tell the difference in positioning for the rectangle and the ellipse? Why did I have to use a different posY value when drawing the ellipse?
  ellipse(950, 650, 250, 250);
  
  //draws part of an ellipse at coordinates posX, posY, with a width w and height h, starting at d1 and ending at d2. syntax: arc(posX,posY,w,h,d1,d2)
  //if you're not comfortable with radians you can calculate in degrees and cast* them as radians. syntax: radians(degrees)
  arc(350, 1000, 250, 250, QUARTER_PI, PI+HALF_PI);
  arc(950, 1000, 250, 250, radians(45), radians(270));
}

//again, we leave draw alone since we're drawing static shapes.
void draw(){
  
}
