/* Prototyping program for logical button pressing
 */
//
//Global Variables
float stopX, stopY, stopWidth, stopHeight;
boolean stopHoverOver=false;
//
void setup() {
  size(700, 500);
  //
  //Population, before moving to VOID in a Subprogram
  float startingX = width*1/2;
  float startingY = height*1/2;
  float buttonReferentMeasure = width*1/9; //7 buttons plus 2 buttons of space
  float buttonSide = buttonReferentMeasure; //All buttons are squares
  //
  stopX = startingX - 4.5 * (buttonReferentMeasure);
  stopY = startingY;
  stopWidth = buttonSide;
  stopHeight = buttonSide;
  //
}//End setup
//
void draw() {
  //Example STOP Button: button is the logical rectangle
  //Hoverover Feature
  if ( mouseX>=stopX && mouseX<=stopX+stopWidth && mouseY>=stopY && mouseY<=stopY+stopHeight )
  {
    println("Hovering Over Button");
  } else
  {
    println("");
  }//End Hoverover Feature
  rect(stopX, stopY, stopWidth, stopHeight);
  //
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  //
  /* Steps for the conditional
   mouseX>= && mouseX<= && mouseY>= && mouseY<=
   then, add the variables of the rect()
   */
  if ( mouseX>=stopX && mouseX<=stopX+stopWidth && mouseY>=stopY && mouseY<=stopY+stopHeight ) println("Button Pressed");
  //
}//End mousePressed
//
//End Main Program
