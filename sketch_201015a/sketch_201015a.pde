import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
int numberofsongs = 3;
AudioPlayer[] song = new AudioPlayer[numberofsongs];


color white = #FFFFFF;

void setup() {
  //size(500, 600);
  minim = new Minim(this);
  song[0] =minim.loadFile("Savior_Search.mp3");
  song[1] =minim.loadFile("Pretty Boy - DJ Freedem.mp3");
  song[2] =minim.loadFile("Getaway_Powder.mp3");
}

void draw() {
}

void keyPressed() {
  if (key == ' '||key == ' ') {
    if (song[2].isPlaying() ) {
      song[2].pause();
    } else if (song[2].position() == song[2].length()) {
    song[2].rewind();
    song[2].play();
    } else {
      song[2].play();
    }
  }// End Play-pause
  //
  if (key == 's'|| key == 's') {
  if (song[2].isPlaying() ) {
  song[2].pause();
  song[2].rewind();
   } //End STOP Button
  }
 }
void mousePressed() {
}
