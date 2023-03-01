//Global Variables
Minim minim; //creates an object to access all functions
AudioPlayer[] songs = new AudioPlayer[2]; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
AudioPlayer[] soundEffects = new AudioPlayer[2];
String pathway, grove, newsroom, string, door;
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
  songs[0] = minim.loadFile( pathway + grove );
  songs[1] = minim.loadFile( pathway + newsroom );
  soundEffects[0] = minim.loadFile( pathway + string );
  soundEffects[1] = minim.loadFile( pathway + door );
  //
} //End setupMusic
//
void drawMusic() {}//End drawMusic
//
void keyPressedMusic() {}//End keyPressedMusic
//
void mousePressedMusic() {}//End mousePressedMusic
//
void concatenationOfMusicFiles() {
  pathway = "data/";
  grove = "groove.mp3";
  newsroom = "Newsroom.mp3";
  string = "The_Simplest_Sting.mp3";
  door = "Wood_Door_Open_and_Close_Series.mp3";
}//End concatenation
//
//End Music SubProgram
