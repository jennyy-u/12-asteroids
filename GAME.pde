void game() {
  background(black);


  int i = 0;
  while (i < objects.size()) {
    GameObject currentObject = objects.get(i);
    currentObject.act();
    currentObject.show();
    if (currentObject.lives == 0)
      objects.remove(i);
    else
      i++;
  }
}


void gameClicks() {
}










//circle(loca.x, loca.y, d);

//loca.add(velo);
//velo.add(gravity);


//velo.setMag(velo.mag() + 1);
//println(velo.mag());
//println(velo.heading());
