button startButton;

void intro() {
  background(black);

  //game title
  textFont(halo);
  fill(white);
  textSize(90);
  text("ASTEROID", width/2, 250);

  //start button
  textFont(vectroid);
  startButton = new button("start", width/2, 400, 150, 70, silver, white);
  click();
  startButton.show();
  introClicks();


  //reset game
  
}


void introClicks() {
  if (startButton.clicked) {
    mode = GAME;
  }
}
