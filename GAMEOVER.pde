button restartButton;

void gameover() {
  background(black);

  //play again button
  click();
  
  textFont(vectroid);
  restartButton = new button("play again", width/2, 400, 240, 80, white, silver);
  restartButton.show();
  gameoverClicks();

  if (player1.lives == 0) {
    gameoverLose();
  } 
  
  //count points for each asteroid destroyed
  else if (player1.lives >= 0 && asteroid.astPoint == 2) {
    gameoverWin();
  }
}


void gameoverClicks() {
  if (restartButton.clicked) {
    mode = INTRO;
    player1.loca.x = width/2;
    player1.loca.y = height/2;
  }
}

void gameoverWin() {
  textFont(vectroid);
  textSize(80);
  text("you win", width/2, height/3);
}

void gameoverLose() {
  textFont(vectroid);
  textSize(80);
  text("you lose", width/2, height/3);
}
