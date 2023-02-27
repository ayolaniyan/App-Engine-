# App-Engine-
Muisc player 2
TO DO LIST

[] Case Study: layout, developer-rectangles, ratios
 Pathway and Directory Reading of file names
Drawing 2D Music Buttons: all buttons happen together
 All drawings start with same X&Y Variables (will be received parameters)
 All drawings have scale factor for X&Y Dimensions (will be received parameters)
 Order of populating variables is mandatory, to use a variable it must be populated first, after size()
 Pause is the center button, all are relative to this
 Play Triangle over top of Pause Shapes, based on single starting point and pause variables
 Stop Square prototyped to the front of all buttons (stop, prev, reverse-skip, play-pause, forward-skip, next, Loop PlayList), with mute and other loops place appropriately (use developer rectangles for symmetrical spacing)
 List all buttons ... design or research what these symbols are, then draw these with code and numbers
 Stop
 previous track
 reverse skip
 play-pause
 forward skip
 next track
 Loop Single Song Once
 Loop Single Song Infinite
 Loop Playlist Infinite
 Mute Button
 OPTIONAL Shuffle (hint, uses random)
[] Organize with Population Tab and Music Button Tab, each with a TAB-Driver and VOIDs connected to the Driver
[] Future: connect player function to visual feedback of button
[] Keyboard Shortcuts for button algorithms
[] Play-Pause: pressing the P keyboard button will ...
At anytime, pause will stop playing the file and hold the position in the file
Beginning of .mp3: play file
"Up to 80%" of .mp3: "I want to play the rest of the song"
"After 80%": "I am done, play the next song."
ERROR: computer can play a song file, at the end of the file, but nothing will be heard in the speakers
[] Stop: pressing S will ...
pause() the current .mp3 file
rewind() the current .mp3 file so it is ready to play at the beginning of the file
ERROR: STOP does not exist, only pause()
[] Mute Button: pressing M will ... stop the speakers but computer will continue to play the file until it ends
ERROR: if the .mp3 file is muted AND .mp3 is at the end, then unMute() will rewind() the current .mp3 and play from the beginning
[] Forward Skip: within a song for milliseconds or seconds (student decides how many seconds)
[] Reverse Skip: within a song for milliseconds or seconds (student decides how many seconds)
[] Next track:
Current Song:
pause(index)
rewind(index)
index - 1
Next Song

play(index)
Error, Array Index out of Bounds: 0 = array.length()-1
if ( index + 1 >= array.length ) { index = 0; }
[] Previous track:
Current Song:
pause(index)
rewind(index)
index + 1
Next Song
play(index)
Error, Array Index out of Bounds: array.length()-1 = 0
if ( index + 1 >= array.length ) { index = 0; }
[] Loop Single Song Once: parameter = 1
[] Loop Single Song Infinite: parameter is -1 or blank
[] Loop Playlist Infinite
[] OPTIONAL Shuffle (hint, uses random)
[] Future: Night Mode Colors by button and default by time (binary choice, returning a choice based on preference)
Use of ternary operator
CS20 is able to use daytime procedure for more individual control
[] Future: Hover-over feature
[] Future: Visual Feature of being clicked
[] OPTIONAL: include following 2D Shapes code attributes
Note: what are the other codes noted elsewhere
fill() & noFill()
stroke() & noStroke()
strokeWeight() & "reset to 1 pixel"
[] Review 2D Shapes: how is your program organized in an algorithm?
Using Meta Data: one font, into 3 rectangles, able to move rectangles anywhere
[] Review music pathway
[] Review sound effect pathway
[] Review concatenating pathways to .exe, directories to sketch, any additional pathways, and file names
[] Loading meta data to String Variables
[] Review Text Code
[] Create Text Calculator
Images
[] Background Image (no aspect ratio)
[] foreground Image (aspect ratio)
Note: any image could be aspect ratio or not
[] Next Item
Future ideas

[] display issues: landscape vs. portrait, CANVAS bigger than display & scale down
