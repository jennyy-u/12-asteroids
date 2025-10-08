button restartButton;

void gameover() {
  background(black);


  //restart game button
  restartButton = new button("play again", width/2, 400, 200, 100, white, silver);
  click();
  restartButton.show();
  gameoverClicks();
}


void gameoverClicks() {
  if (restartButton.clicked) {
    mode = GAME;
  }
}
