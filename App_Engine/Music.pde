//Global Variables
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[2]; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
AudioPlayer[] soundEffects = new AudioPlayer[2];
String pathway, letgo, eureka, beat, door;
int currentSong=0;
Boolean autoPlayOn=false;
//
void setupMusic() {
  //
  minim = new Minim (this); //load from data directory, loadFile should also load from project folder, like loadImage
  //
  //Set the Directory or Pathway to the Music
  //Pathway: data / Music or Sound Effct Files
  //
  //Reminder: finish OS_Level Code to auto read pathway and files (See Operating System)
  //
  concatenationOfMusicFiles();
  songs[0] = minim.loadFile( pathway + letgo );
  songs[1] = minim.loadFile( pathway + eureka  );
  soundEffects[0] = minim.loadFile( pathway + beat  );
  soundEffects[1] = minim.loadFile( pathway + door );
  //
} //End setupMusic
//
void drawMusic() {
  //Debugging in CONSOLE
  print("Current Sond Position:", songs[currentSong].position() );
  println("\tEnd of Song:", songs[currentSong].length() );
  //
  //
}//End drawMusic
//
void keyPressedMusic() {
  //Music Key Board Short Cuts
  //
  if ( key == 'm' || key == 'M' ) {//Mute Button, not PAUSE, only affect speakers
    //ERROR: this MUTE Button only works when song is playing
    //ERROR Fix: unmute or rewind when song is not playing (i.e. unmute next song)
    if ( key=='l' || key== 'L'  ) //Parameter is number of repeats
    if ( songs[currentSong].isMuted() ) {
      songs[currentSong].unmute();
    } else if ( songs[currentSong].position() >= songs[currentSong].length()*4/5 ) {
      //Students to finish SMARTER Mute Button
      //ERROR: music player breaks if song finishes
      /* Ideas
       - rewind the song
       - play the next song automatically
       - play of notification to choose the next song
       */
      songs[currentSong].rewind(); //simple solution, contains ERROR
    } else {
      songs[currentSong].mute();
    }
  }//End Mute Button
  //
  //Forward & Reverse Skip
  if ( key == 'f' || key == 'F' ) {
    //Skips FORWARD to end of song
    //ERROR: if at end, plays beginning
    songs[currentSong].skip(1000); //parameter in milliseconds
  } else if ( songs[currentSong].position() >= songs[currentSong].length()*4/5 ) {
    //Student to Finish
    //ERROR Catch: if end of song, then next song
    //Student to finish Conditional
  } //End Forward
  if ( key == 'r' || key == 'R' ) {
    //Spamming R means start playing at beginning of song
    songs[currentSong].skip(-1000); //parameter in milliseconds
  }//End Reverse
  //
  //Single Loop, starter function
  //if (key == '1') songs[currentSong].loop(1); //ERROR: immediately restarts song
  if ( key == '1' ) {
    //Finish Playing current song, then replay once
    delay( songs[currentSong].length() - songs[currentSong].position() );
    //ERROR: delay stops all player functions, computer doesn't recognize if
    //       song is playing
    songs[currentSong].loop(0);
  } //End Single Loop
  //
  //Loop Infinte Times
  if ( key <= '9' && key != '1' ) {
    //Finish Playing current song, then replay once
    delay( songs[currentSong].length() - songs[currentSong].position() );
    //ERROR: delay stops all player functions, computer doesn't recognize if
    //       song is playing
    songs[currentSong].loop(-1); //parameter is empty or -1
  } //End Single Loop
  //
  //Stop
  if ( key == 's' || key == 'S' ) { //STOP Button
    /*Note: possible smarter STOP Buttons
     - include soft "PAUSE" for first 15 seconds of STOP
     - include auto previous & next track if STOP at beginning or end of file
     */
    if ( songs[currentSong].isPlaying() ) {
      songs[currentSong].pause();
      songs[currentSong].rewind();
    } else {
      songs[currentSong].rewind();
    }
  }//End Stop
  //
  //Play-Pause
  if ( key == 'p' || key == 'P' ) { //Play-Pause Button
    if ( songs[currentSong].isPlaying() ) {
      songs[currentSong].pause();
    } else if (songs[currentSong].position() >= songs[currentSong].length()*4/5) {
      // Student to Finish
      // .pause(), .rewind(), then cue next song
      //CAUTION: without code, this conditional will not do anything
    } else {
      songs[currentSong].play(); //no auto rewind like loop()
    }
  } //End Play-Pause
  //
  //Autoplay Button
  if ( key == 'o' || key == 'O'  ) {
    if ( autoPlayOn == false ) {
      autoPlayOn = true;
    } else {
      autoPlayOn = false;
    }
  }//End Autoplay
  //
}//End keyPressedMusic
//
void mousePressedMusic() {
}//End mousePressedMusic
//
void concatenationOfMusicFiles() {
  pathway = "data/";
  letgo = "Central Cee Let Go.mp3";
  eureka = "Eureka.mp3";
  beat = "Beat_Your_Competition.mp3";
  door = "Wood_Door_Open_and_Close_Series.mp3";
}//End concatenation

// //
//End concatenation
void mute() {

  if ( songs[currentSong].isMuted(  ) ) {
    songs[currentSong].unmute();
  } else if ( songs[currentSong].position() >= songs[currentSong].length()*99/100 ) {
    songs[currentSong].pause();
    songs[currentSong].rewind();
    songs[currentSong].unmute();
  } else {
      songs[currentSong].mute();
  }
  
}//End Mute
  //
void stop(){

  if ( songs[currentSong].isPlaying()) {
    songs[currentSong].pause();
    songs[currentSong].rewind();
  } else {
    songs[currentSong].rewind();
  }
}//End Stop
//
void singleloop() {

  delay(songs[currentSong].length() - songs[currentSong].position() );
  //ERROR: delay stops all player functions, computer doesn't recognize if
  //       song is playing
  songs[currentSong].loop(0); //perameter is empty or -1
}

void infiniteloop() {
  delay(songs[currentSong].length() - songs[currentSong].position() );
  songs[currentSong].loop(-1); //perameter is empty or -1
}

void playpause() {
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
  } else if (songs[currentSong].position() >= songs[currentSong].length()*99/100) {
    songs[currentSong].pause();
    songs[currentSong].rewind();
  } else {
    songs[currentSong].play(); //no auto rewind like loop()
  }
}

void fastforward() {

  songs[currentSong].skip( 5000 ); //parameter in milliseconds
  if ( songs[currentSong].position() >= songs[currentSong].length()*99/100 ) {
    songs[currentSong].skip( songs[currentSong].length() - songs[currentSong].position());
    songs[currentSong].pause();

  }
}
void reverse(){
  songs[currentSong].skip( -5000 ); //parameter in milliseconds
}

void next(){

  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
    currentSong+=1; //Still figuring this part out
    songs[currentSong].play();
  } else if ( currentSong == songs.length - 1 ) {
    songs[currentSong].rewind();
    currentSong = songs.length - songs.length;
  } else {
    songs[currentSong].rewind();
    currentSong++;
  }
}

void back() {

  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
    currentSong-=1 ; //Still figuring this part out
    songs[currentSong].play();
      //If the current song is playing, then pressing the next button
      //play the next song
  } else if ( currentSong == songs.length + 1 ) {
    songs[currentSong].rewind();
    currentSong = songs.length - songs.length;
  } else {
    songs[currentSong].rewind();
    currentSong--;
  }
}
/*
void drawMusicButtons() {
  stroke(red);
  strokeWeight(7.5);
  drawPauseButton();
  drawStopButton();
  drawPlayButton ();
  drawFFButton();
  drawRButton();
  drawSkipButton();
  drawBackButton();
  drawLoopButton() ;
  drawMuteButton();
}//End drawMusicButtons() 
void drawPauseButton() {
  fill(black);
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight );
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight );
  {
    stroke(white);
    strokeWeight(2.5);
    line( pauseX1, pauseY1, pauseX3, playY2 );
    line( pauseX1, playY3, pauseX3, playY2 );
    line( pauseX3, playY3, pauseX1, playY2 );
    line( pauseX3, pauseY1, pauseX1, playY2 );
    line( pauseX2, pauseY2, playX2, playY2 );
    line( pauseX2, playY3, playX2, playY2 );
    line( playX2, playY3, pauseX2, playY2 );
    line( playX2, pauseY2, pauseX2, playY2 );
    line( pauseX1, playY2, pauseX3, playY2 );
    line( pauseX2, playY2, playX2, playY2 );
    strokeWeight(7.5);
    stroke(red);
  }
  fill(resetcolorDayMode) ; //Change this to ternary
}//End drawPauseButton()
//
void drawStopButton() {
  fill(black);
  rect( stopX, stopY, stopWidth, stopHeight ); //Square
  fill(resetcolorDayMode) ; //Change this to ternary
}//End drawStopButton()
//
void drawPlayButton() {
  fill(black);
  triangle( playX1, playY1, playX2, playY2, playX3, playY3);
  {
    stroke(white);
    strokeWeight(2.5);
    line( playX1, playY2, playX2, playY2);
    line( playX1, playY1, pauseX2, playY2);
    line( playX1, playY1, pauseX3, playY2);
    line( playX3, playY3, pauseX2, playY2);
    line( playX3, playY3, pauseX3, playY2);
    strokeWeight(7.5);
    stroke(red);
  }
  fill(resetcolorDayMode) ; //Change this to ternary
}//End drawPlayButton()
//
void drawFFButton() {
   fill(black);
   triangle( ffX4, ffY4, ffX5, ffY5, ffX6, ffY6) ;
   {
     stroke(white);
     strokeWeight(2.5);
     line( ffX4, ffY4, ffX2, ffY2);
     line( ffX6, ffY6, ffX2, ffY2);
     line( ffX1, ffY2, ffX5, ffY5);
     strokeWeight(7.5);
     stroke(red);
   }
   triangle( ffX1, ffY1, ffX2, ffY2, ffX3, ffY3) ;
   {
     stroke(white);
     strokeWeight(2.5);
     line( ffX1, ffY1, ffX4, ffY5);
     line( ffX3, ffY3, ffX4, ffY5);
     line( ffX1, ffY2, ffX2, ffY2);
     line( ffX4, ffY4, ffX6, ffY6);
     strokeWeight(7.5);
     stroke(red);
   }
   fill(resetcolorDayMode) ; //Change this to ternary
}//End drawFFButton()
//
void drawRButton() {
   fill(black);
   triangle( rX4 , rY4, rX5, rY5, rX6, rY6);
   {
     stroke(white);
     strokeWeight(2.5);
     line( rX4, rY4, rX2, rY2);
     line( rX6, rY6, rX2, rY2);
     line( rX4, rY2, rX5, rY5);
     strokeWeight(7.5);
     stroke(red);
   }
   triangle( rX1, rY1, rX2, rY2, rX3, rY3);
   {
     stroke(white);
     strokeWeight(2.5);
     line( rX1, rY1, rX4, rY5);
     line( rX3, rY3, rX4, rY5);
     line( rX1, rY2, rX2, rY2);
     line( rX4, rY4, rX6, rY6);  
     strokeWeight(7.5);
     stroke(red);
   }
   fill(resetcolorDayMode) ; //Change this to ternary
}//End drawReverseButton()
//
void drawSkipButton() {
  fill(black);
  triangle (skipX1, skipY1, skipX2, skipY2, skipX3, skipY3);
  rect (skipX4, skipY4, pauseWidth, pauseHeight);
  {
    stroke(white);
    strokeWeight(2.5);
    line( skipX1, skipY2, skipX5, skipY2);
    line( skipX2, skipY2, skipX5, skipY1);
    line( skipX2, skipY2, skipX5, skipY3);
    line( skipX5, skipY2, skipX4, skipY1);
    line( skipX5, skipY2, skipX4, skipY3);
    line( skipX4, skipY4, skipX5, skipY3);
    line( skipX5, skipY4, skipX4, skipY3);
    strokeWeight(7.5);
    stroke(red);
  }
  fill(resetcolorDayMode) ; //Change this to ternary
}//End drawSkipButton()
//
void drawBackButton() {
  fill(black);
  triangle (backX1, backY1, backX2, backY2, backX3, backY3);
  rect (backX4, backY4, -pauseWidth, pauseHeight);
  {
    stroke(white);
    strokeWeight(2.5);
    line( backX1, backY2, backX5, backY2);
    line( backX2, backY2, backX5, backY1);
    line( backX2, backY2, backX5, backY3);
    line( backX5, backY2, backX4, backY1);
    line( backX5, backY2, backX4, backY3);
    line( backX4, backY4, backX5, backY3);
    line( backX5, backY4, backX4, backY3);
    strokeWeight(7.5);
    stroke(red);
  }
  fill(resetcolorDayMode) ; //Change this to ternary
}//End drawBackButton()
// 
void drawLoopButton() {
  fill(black);
  ellipse ( loopX1, loopY1, loopWidth, loopHeight);
  fill(resetcolorDayMode) ; //Change this to ternary
  ellipse ( loopX2, loopY2, loopWidth2, loopHeight2);
  fill(black);
  triangle ( loopX3, loopY3, loopX4, loopY4, loopX5, loopY5);
  {
    stroke(white);
    strokeWeight(2.5);
    line( loopX1, loopY7, loopX8, loopY8);
    line( loopX8, loopY8, loopX1, loopY9);
    line( loopX7, loopY8, loopX1, loopY6);
    line( loopX1, loopY6, loopX9, loopY8);
    line( loopX1, loopY9, loopX6, loopY8);
    line( loopX1, loopY7, loopX6, loopY8);
    line( loopX1, loopY10, loopX7, loopY8);
    line( loopX1, loopY10, loopX9, loopY8);
    line( loopX1, loopY10, loopX11, loopY11);
    line( loopX11, loopY11, loopX8, loopY8);
    line( loopX8, loopY8, loopX11, loopY12);
    line( loopX11, loopY12, loopX1, loopY6);
    line( loopX1, loopY6, loopX12, loopY12);
    line( loopX12, loopY12, loopX6, loopY8);
    line( loopX6, loopY8, loopX12, loopY11);
    line( loopX12, loopY11, loopX1, loopY10);
    line( loopX1, loopY7, loopX11, loopY11);
    line( loopX11, loopY11, loopX7, loopY8);
    line( loopX7, loopY8, loopX11, loopY12);
    line( loopX11, loopY12, loopX1, loopY9);
    line( loopX1, loopY9, loopX12, loopY12);
    line( loopX12, loopY12, loopX9, loopY8);
    line( loopX9, loopY8, loopX12, loopY11);
    line( loopX12, loopY11, loopX1, loopY7);
    strokeWeight(7.5);
    stroke(red);
  }
  fill(resetcolorDayMode) ; //Change this to ternary
  noFill() ;
  ellipse ( loopX1, loopY1, loopWidth, loopHeight);
  ellipse ( loopX2, loopY2, loopWidth2, loopHeight2);
  fill(resetcolorDayMode) ; //Change this to ternary
  fill(black);
  triangle ( loopX3, loopY3, loopX4, loopY4, loopX5, loopY5);
  {
    stroke(white);
    strokeWeight(2.5);
    line( loopX1, loopY4, loopX4, loopY4);
    strokeWeight(7.5);
    stroke(red);
  }
}//End drawLoopButton()
//
void drawMuteButton() {
  fill(black);
  triangle (muteX1, muteY1, muteX10, muteY2, muteX3, muteY3);
  line(muteX1, muteY1, muteX4, muteY4);
  line(muteX3, muteY3, muteX5, muteY5);
  rect (muteX4, muteY4, muteWidth, muteHeight);
  rect (muteX5, muteY5, muteWidth2, muteHeight2);
  line ( muteX6, muteY6, muteX7, muteY7);
  line ( muteX8, muteY8, muteX9, muteY9);
  fill(resetcolorDayMode) ; //Change this to ternary
  {
    stroke(white);
    strokeWeight(2.5);
    line( muteX10, muteY4, muteX5, muteY5);
    line( muteX10, muteY5, muteX4, muteY4);
    line( muteX10, muteY4, muteX3, muteY3);
    line( muteX10, muteY5, muteX1, muteY1);
    line(muteX3, muteY3, muteX4, muteY4);
    line(muteX1, muteY1, muteX5, muteY5);
    line( muteX10, muteY2, muteX1, muteY2);
    line( muteX10, muteY2, muteX1, muteY1);
    line( muteX10, muteY2, muteX3, muteY3);
    //line( muteX10, muteY2, muteX4, muteY4);
    //line( muteX10, muteY2, muteX5, muteY5);
    line( muteX1, muteY2, muteX4, muteY4);
    line( muteX1, muteY2, muteX5, muteY5);
    //line( muteX1, muteY2, muteX10, muteY4);
    //line( muteX1, muteY2, muteX10, muteY5);
    strokeWeight(7.5);
    stroke(red);
  }
}//End drawMuteButton()
*/
//End Music Player Buttons

/*
void autoplay() {
  if ( autoPlayOn ) {
    if(songs[currentSong].position() >= songs[currentSong].length()*99/100) {
      songs[currentSong].rewind();
      currentSong+=1 ;
      songs[currentSong].play();
    }
    
    //songs[currentSong].isPlaying();
    //when false rewind();
    //currentSong+=1;
    //songs[currentSong].play();
}
*/
//End Music SubProgram
