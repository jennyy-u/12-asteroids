button restartButton;

void gameover() {
  background(black);
  
  
  //restart game button
  textFont(vectroid);
  restartButton = new button("play again", width/2, 400, 260, 100, white, silver);
  click();
  restartButton.show();
  gameoverClicks();
}


void gameoverClicks() {
  if (restartButton.clicked) {
    mode = INTRO;
  }
}
