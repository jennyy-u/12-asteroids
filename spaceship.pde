class Spaceship { //class names are usually capitalized

  //instance variables
  PVector loca;      //location
  PVector velo;      //velocity
  PVector direct;    //direction


  //constructor
  Spaceship() {
    loca = new PVector(width/2, height/2);
    velo = new PVector(0, 0);
    direct = new PVector(1, 0);
  }


  //behaviour functions

  void show() {
    pushMatrix();
    translate(loca.x, loca.y);
    drawShip();
    popMatrix();
  }

  void drawShip() {
    stroke(white);
    fill(black);
    strokeWeight(2);
    rect(0, 0, 40, 20);
    triangle(20, -10, 20, 10, 30, 0);
    circle(3, 0, 8);
  }

  void act() {
    move();
    shoot();
    checkCollisions();
  }

  void move() {
  }
  void shoot() {
  }
  void checkCollisions() {
  }
}
