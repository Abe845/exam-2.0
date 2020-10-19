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
    if (song1.isPlaying() ) {
      song1.pause();
    } else if (song1.position() == song1.length()) {
    song1.rewind();
    song1.play();
    } else {
      song1.play();
    }
  }// End Play-pause
  //
  if (key == 's'|| key == 's') {
  if (song1.isPlaying() ) {
  song1.pause();
  song1.rewind();
   } //End STOP Button
  }
 }
void mousePressed() {
}
