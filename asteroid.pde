class Asteroid extends GameObject {

  //instance variables
  float rotSpeed, angle;

  //constructor
  Asteroid() {
    super(random(width), random(height), 1, 1);
    velo.setMag(random(1, 3));
    velo.rotate(random(TWO_PI));
    lives = 3;
    d = lives*40;
    rotSpeed = random(-2, 2);
    angle = 0;
  }

/*
  Asteroid( ) {
    super(random(width), random(height), 1, 1);
    velo.setMag(random(1, 3));
    velo.rotate(random(TWO_PI));
    lives = 3;
    d = lives*15;
    rotSpeed = random(-2, 2);
    angle = 0;
  }
  */

  void show() {
    strokeWeight(3);
    stroke(white);
    fill(black);
    pushMatrix();
    //translate(loca.x, loca.y);
    circle(loca.x, loca.y, d);
    line(loca.x, loca.y, loca.x+d/2, loca.y);
    popMatrix();
  }


  void act() {
    loca.add(velo);
    wrapAround();
    checkCollisions();
  }


  void checkCollisions() {
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i);
      if (obj instanceof Bullet) {
        if (dist(loca.x, loca.y, obj.loca.x, obj.loca.y) < d/2 + obj.d/2) {
          objects.add(new Asteroid(/*loca.x, loca.y, lives-1*/));
          objects.add(new Asteroid());
          lives = 0;
          obj.lives = 0;
        }
      }
      i++;
    }
  }
}
