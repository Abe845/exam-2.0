//File / Sketch / Import Library / Add Library / Click Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
int numberOfSongs = 3;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs; //Uses formula or FileIO Memory

PImage pic;
float imageStartWidth2, imageStartHeight2, imageWidth2, imageHeight2;
float imageWidthRatio;
float imageHeightRatio;
float imageWidthRatio2;
float imageHeightRatio2;
//

void setup() {
  size(700, 700); //fullScreen(), displayWidth & displayHeight
  //
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  song[0] = minim.loadFile("Savior_Search.mp3");
  song[1] = minim.loadFile("Pretty Boy - DJ Freedem.mp3");
  song[2] = minim.loadFile("Getaway_Powder.mp3");

  println("Start of Console");
  println("Click the Console to Finish Starting this program");
  println("Press P to Play and Pause");
  
  pic = loadImage("1672270.png"); //Dimension: 600 Width, 556Height
  imageWidthRatio = 600.0/600.0; //must be decmals due to float, larger # for aspect ratio
  imageHeightRatio = 600.0/556.0; //must be decmals due to float, <1 for aspect ratio
  imageStartWidth2 = width*0;
  imageStartHeight2 = height*0;
  imageWidth2 = width*imageWidthRatio; //Aspect Ratio
  imageHeight2 = height*imageHeightRatio; //Aspect Ratio
  // swcond time
  imageWidthRatio2= 600.0/600.0; //must be decmals due to float, larger # for aspect ratio
  imageHeightRatio2= 556.0/600.0; //must be decmals due to float, <1 for aspect ratio
  imageStartWidth2= width*30/700;
  imageStartHeight2 = height*525/700;
  imageWidth2 = width*imageWidthRatio2; //Aspect Ratio
  imageHeight2 = height*imageHeightRatio2; //Aspect Ratio
  //
  //rect(imageStartWidth, imageStartHeight, imageWidth, imageHeight);
  image(pic, imageStartWidth2, imageStartHeight2, imageWidth2, imageHeight2);
  image(pic, imageStartWidth2, imageStartHeight2, imageWidth2, imageHeight2);
}

void draw() { 
  circle(325, 525, 70); 
  rect(55, 410, 525, 25); 
  rect(55, 50, 525, 300); 
  triangle(530, 530, 530, 450, 440, 430);
  rect(imageStartWidth2, imageStartHeight2, imageWidth2, imageHeight2);
}

void mousePressed() {
}

void keyPressed() {
  println ("Current Song before the next or back button, ", "Number: "+currentSong); //For Debugging
  //Solution for Back or Previous Button, copy the next button code: change to -1, change previous song at beginning to last song

  if (key == 'q' || key == 'q') { //Next Button to Console
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        println ("Current Song is the first song, ", "Number: " + currentSong); //For Debugging
        currentSong = numberOfSongs - 1;
        println ("Current Song is now the last song, ", "Number: " + currentSong); //For Debugging
      } else {
        currentSong -= 1; // Equivalent code: currentSong = currentSong - 1
        println ("Current Song after the next or back button, but not the first song", "\tNumber: " + currentSong); //For Debugging
      }
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        println ("Current Song is the first song, ", "Number: " + currentSong); //For Debugging
        currentSong = numberOfSongs - 1;
        println ("Current Song is now the last song, ", "Number: " + currentSong); //For DebuggingcurrentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong -= 1; // Equivalent code: currentSong = currentSong - 1
        println ("Current Song after the next or back button, but not the first song, ", "Number: "+currentSong); //For Debugging
     }
    }
  }

  if (key == ' ' || key == ' ') {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
    } else if ( song[currentSong].position() == song[currentSong].length() ) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  }
}
