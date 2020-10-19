

//Global Variables
Minim minim;
AudioPlayer song1;


color white = #FFFFFF;

void setup() {
  //size(500, 600);
 minim = new Minim(this);
 song1 =minim.loadFile("");
}

void draw() {}

void keyPressed() {
  if (key == 'p'   key == 'p') {
  song1.play();
  }
}

void mousePressed() {}
