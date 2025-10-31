class Spaceship extends GameObject {

  //instance variables
  PVector direct;    //direction
  int cooldownB;
  int cooldownT;


  //constructor
  Spaceship() {
    super(width/2, height/2, 0, 0);
    direct = new PVector(0, -0.1);
    cooldownB = 0;
    cooldownT = 0;
    lives = 5;
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
    move();
    thrustParticle();
    shoot();
    checkCollisions();
    wrapAround();
    teleport();

    //display lives
    textFont(tokyo);
    fill(silver);
    textSize(30);
    text("lives:", 50, 40);
    text(lives, 90, 40);

    if (lives == 0) mode = GAMEOVER;
  }

  void move() {
    loca.add(velo); //movement
    velo.setMag(min(velo.mag(), 10)); //speed limit
    if (upKey) velo.add(direct);
    if (downKey) velo.sub(direct);
    if (leftKey) direct.rotate(-radians(2));
    if (rightKey) direct.rotate(radians(2));
    velo.limit(10);
  }

  void shoot() {
    cooldownB--;
    if (spaceKey && cooldownB <= 0) {
      objects.add(new Bullet() );
      cooldownB = 30;
    }
  }

  void thrustParticle() {
    if (upKey) {
      int tpi = 0;
      while (tpi < 1) {
        objects.add(new Particle(loca.x, loca. y, direct.copy(), red));
        tpi++;
      }
    }
  }

  void checkCollisions() {
    
  }


  void teleport() {
    cooldownT--;
    if (zKey) {
      player1.loca.x = random(width);
      player1.loca.y = random(height);
      direct.rotate(radians(random(2*PI)));
      cooldownT = 240;
    }
  }
}
