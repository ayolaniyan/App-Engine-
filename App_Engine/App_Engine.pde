/* CAUTION Sandbox
 This code will cause the array songs to be null sometimes.
 This must be error checked
 */
//
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
String path = new File("").getAbsolutePath(); //Exported Program
//CAUTION: GitHub must be linked to the C-Drive instead of FS ... This might need a lesson
String directory = "C:/Users/A   .   Y/Documents/GitHub/App-Engine-/App_Engine"; //Not Exported
//Reminder: \n is a character escape, so pathway must have forward slashes
//

void setup() {
  //
  
  
  songs[0].loop(0); //Change the index manually
  //
  setupMusic();
}//End setup
//
void draw() {
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End MAIN Program (Driver)z
