import ddf.minim.*; 
final int INTRO = 0, GAME = 1, PAUSE = 2, GAMEOVER = 3; 
int mode = INTRO, live, timer, S = 0; 
Minim minim;
AudioPlayer intro, beep, boop, bbreak, failure, win, gameover;
float leftx = 800, lefty = 600, leftd = 200, ballx, bally, balld = 20, vx, vy;
//bricks values
int n = 48, tempx = 100, tempy=100;
int r = 50;
int g = 0; 
int b=100;
int[] x = new int[n];
int[] y = new int[n];
color[] c = new color[n];
boolean[] isBroken = new boolean[n];
int i = 0;
int[][]bricks = new int[n][3];
int frame = 0;
PFont myFont;
PImage[] gif;
void setup() {
  size(800, 600, FX2D);
  textAlign(CENTER, CENTER);
  minim = new Minim(this); //minim and sound initialization
  beep = minim.loadFile("beep.wav");
  boop = minim.loadFile("boop.wav");
  bbreak = minim.loadFile("break.wav");
  failure = minim.loadFile("failure.wav");
  intro = minim.loadFile("intro.wav");
  win = minim.loadFile("win.wav");
  gameover = minim.loadFile("gameover.wav");

  gif = new PImage[9];

  while (i<9) {
    gif[i] = loadImage("frame_"+i+"_delay-0.04s.png");
    i++;
  }

  for (int j = 0; j < n; j++) {
    if (tempx==width-100) {
      tempx=100;
      tempy+=50;
      r+=80;
      b+=200;
    }
    x[j] = tempx;
    y[j] = tempy;
    c[j] = color(r, g, b);
    tempx += 50;
  }
}
void draw() { //different modes
  if (mode == INTRO) intro();
  else if (mode == GAME) game();
  else if (mode == PAUSE) pause();
  else if (mode == GAMEOVER)  gameover();
}
