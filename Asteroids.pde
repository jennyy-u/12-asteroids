import java.util.ArrayList;

//jenny yu
//block 1-4
//october 7, 2025

//colour palette
color black = #000000;
color white = #ffffff;
color silver = #c5c5c5;

//font variables
PFont vectroid;
PFont halo;


//mode framework
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
int mode = INTRO;

//keyboard
boolean upKey, downKey, leftKey, rightKey, spaceKey, altKey;


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
  objects.add(new Asteroid());
  objects.add(new UFO());
  
  //font
  vectroid = createFont("Vectroid.otf", 50);
  halo = createFont("HALO____.TTF", 50);

}



void draw() {
  println(objects.size());
  if (mode == INTRO) intro();
  else if (mode == GAME) game();
  else if (mode == PAUSE) pause();
  else if (mode == GAMEOVER) gameover();
}
