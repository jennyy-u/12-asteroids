button resumeButton;

void pause() {
  background(black);
  
  //pause title
  textFont(vectroid);
  fill(white);
  textSize(100);
  text("resume", width/2, 250);
  
  //pause button
  resumeButton = new button("start", width/2, 400, 150, 70, silver, white);
  click();
  resumeButton.show();
  introClicks();
}
  

void pauseClicks() {
  if (resumeButton.clicked) {
    mode = GAME;
  }
}
