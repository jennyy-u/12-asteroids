import java.util.ArrayList;

//jenny yu
//block 1-4
//october 7, 2025

//colour palette
color black = #000000;
color white = #ffffff;
color silver = #c5c5c5;

//mode framework
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
int mode = INTRO;

//keyboard
boolean upKey, downKey, leftKey, rightKey, spaceKey;


//game objects
Spaceship player1;


//list of bullets
ArrayList<GameObject> objects;


void setup() {
  size(800, 600);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  
  objects = new ArrayList();
  player1 = new Spaceship();
  objects.add(player1);

  //loca = new PVector(width/2, height/2);
  //d = 100;
  //velo = new PVector(5, 0);
  //velo.rotate(random (0, 2*PI));
  //gravity = new PVector(0, 1);
}



void draw() {
  println(objects.size());
  if (mode == INTRO) intro();
  else if (mode == GAME) game();
  else if (mode == PAUSE) pause();
  else if (mode == GAMEOVER) gameover();
}
