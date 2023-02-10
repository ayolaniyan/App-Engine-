//Global Variables
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
//
void setup() {
  //Landscape (portrait, square)
  size(700, 400); //width, height
  //fullScreen(); //displayWidth, displayHeight
  //Population, visual data
  float centerX = width * 1/2
  pauseWidth = width;
  pauseX1 = centerX - pauseWidth - pauseWidth*1/2;
  pauseY1 = height;
  pauseX2 = centerX + pauseWidth*1/2;
  pauseY2 = height;
  pauseHeight = height;
}//End setup
//
void draw() {
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight );
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight );
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN Program (Driver)
