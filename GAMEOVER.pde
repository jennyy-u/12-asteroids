button restartButton;

void gameover() {
  background(black);


  //restart game button
  textFont(vectroid);
  restartButton = new button("play again", width/2, 400, 260, 100, white, silver);
  click();
  restartButton.show();
  gameoverClicks();

  //if () gameoverWin();
}


void gameoverClicks() {
  if (restartButton.clicked) {
    mode = GAME;
    player1.loca.x = width/2;
    player1.loca.y = height/2;
  }
}

void gameoverWin() {
}

void gameoverLose() {
  textFont(vectroid);
  text("you lose", width/2, height/3);
}
