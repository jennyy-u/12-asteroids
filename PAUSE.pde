button resumeButton;

void pause() {
  
  background(black);
  
  //pause title
  textFont(vectroid);
  fill(silver);
  textSize(100);
  text("paused", width/2, 250);
  
  //pause button
  resumeButton = new button("resume", width/2, 400, 150, 70, white, silver);
  click();
  resumeButton.show();
  pauseClicks();
}
  

void pauseClicks() {
  if (resumeButton.clicked) {
    mode = GAME;
  }
}
