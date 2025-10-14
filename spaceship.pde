class Spaceship extends GameObject{

  //instance variables
  PVector direct;    //direction


  //constructor
  Spaceship() {
    super(width/2, height/2, 0, 0);
    direct = new PVector(0, -0.1);
  }


  //behaviour functions

  void show() {
    pushMatrix();
    translate(loca.x, loca.y);
    rotate(direct.heading());
    drawShip();
    popMatrix();
  }

  void drawShip() {
    stroke(white);
    fill(black);
    strokeWeight(2);
    triangle(13, -10, 13, 10, 28, 0);
    rect(-7, 0, 40, 20);
    quad(-37, -7, -27, -15, -15, -14, -15, -7);
    quad(-37, 7, -27, 15, -15, 14, -15, 7);
    strokeWeight(1);
    rect(-30, -3, -2, 2);
    rect(-30, 3, -2, 2);
    circle(0, 0, 12);
    circle(0, 0, 6);
    strokeWeight(2);
  }

  void act() {
    if (loca.x < -20) loca.x = width+20;
    if (loca.x > width+20) loca.x = -20;
    if (loca.y < -20) loca.y = height+20;
    if (loca.y > height+20) loca.y = -20;

    move();
    shoot();
    checkCollisions();
  }

  void move() {
    loca.add(velo); //movement
    velo.setMag(min(velo.mag(), 10)); //speed limit
    if (upKey) velo.add(direct);
    if (downKey) velo.sub(direct);
    if (leftKey) direct.rotate(-radians(2));
    if (rightKey) direct.rotate(radians(2));
  }
  void shoot() {
    if (spaceKey) objects.add(new Bullet() );
  }
  void checkCollisions() {
  }
}
