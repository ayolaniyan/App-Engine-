//Global Variables
//
void setup() {
  //Landscape (portrait, square)
  size(700, 400); //width, height
  size(700, 400);
  //fullScreen(); //displayWidth, displayHeight
  //Population, visual data
  float musicButtonDrawX = width * 1/2;
  float musicButtonDrawY = height * 1/2;
  pauseScaleWidth = 1.0/25.0; //used to change x-size
  pauseScaleHeight = 1.0/3.0; //used to change y-axis
  println(pauseScaleWidth);
  pauseWidth = width * pauseScaleWidth;
  pauseX1 = musicButtonDrawX - pauseWidth - pauseWidth*2/4;
  pauseY1 = musicButtonDrawY;
  pauseX2 = musicButtonDrawX + pauseWidth*2/4;
  pauseY2 = pauseY1;
  pauseHeight = height * pauseScaleHeight;
  //
  stopX = musicButtonDrawX - (width * 15/30);
  stopY = pauseY1;
  stopWidth = pauseHeight;
  stopHeight = pauseHeight;
  //
   playX1 = pauseX1 ;
  playY1 = musicButtonDrawY;
  playX2 = musicButtonDrawX + (pauseWidth * 1.5) ;
  playY2 = (playY1 + pauseHeight) / 1.15;
  playX3 = pauseX1 ;
  playY3 = musicButtonDrawY + pauseHeight ;
  //
}//End setup
//
void draw() {
  drawMusicButtons();
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End MAIN Program (Driver)
