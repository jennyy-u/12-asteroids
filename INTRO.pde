button startButton;

void intro() {
  background(black);

  //game title
  fill(white);
  textSize(100);
  text("ASTEROID", width/2, 250);

  //start button
  startButton = new button("start", width/2, 400, 150, 70, silver, white);
  click();
  startButton.show();
  introClicks();
}


void introClicks() {
  if (startButton.clicked) {
    mode = GAME;
  }
}
