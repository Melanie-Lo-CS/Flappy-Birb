float velocity = 0;
float gravity = 0.2;
int score = 0;
boolean start = false;
boolean dead = false;

PImage bg;

PFont font;

void setup() {

  size(600, 600);
  background(#FFFFFF);

  
}

birb birb = new birb(255, 255, color(#2EF0EE));
pipe pipe1 = new pipe(610, 1, birb);
pipe pipe2 = new pipe(910, 1, birb);




void draw() {
  
  font = loadFont("Gabriola-48.vlw");
  textSize(48);
  textFont(font, 48);
  scene();

  }
  //refresh();
  

 // println(Pipe.obstacleX);
