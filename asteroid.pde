class Asteroid extends GameObject {

  //instance variables
  PVector ast;
  float rotSpeed, angle;
  float size;

  //constructor
  Asteroid() {
    super(random(width), random(height), 1, 1);
    velo.setMag(random(1, 3));
    velo.rotate(random(TWO_PI));
    lives = 3;
    d = lives*40;
    size = 0.7;
    rotSpeed = random(-2, 2);
    angle = 0;
  }


  Asteroid(float x, float y, int life) {
    super(x, y, 1, 1);
    velo.setMag(random(1, 3));
    velo.rotate(random(TWO_PI));
    lives = life;
    d = lives*35;
    size = 0.5;
    rotSpeed = random(-2, 2);
    angle = 0;
  }






  void show() {
    strokeWeight(3);
    stroke(silver);
    fill(black);
    pushMatrix();
    translate(loca.x, loca.y);
    scale(size);
    beginShape();
    ast = new PVector(100, 0);
    int a = 0;
    while (a < 13) {
      vertex(ast.x + random(1, 3), ast.y + random(1, 3));
      ast.rotate(radians(360/12));
      a++;
    }
    endShape();
    //circle(loca.x, loca.y, 30);
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
          objects.add(new Asteroid(loca.x, loca.y, lives-1));
          objects.add(new Asteroid(loca.x, loca.y, lives-1));
          lives = 0;
          obj.lives = 0;
          int pi = 0;
          while (pi < 15) {
            objects.add(new Particle(loca.x, loca.y, random(-1, 1), random(-1, 1)));
            pi++;
          }
        }
      }
      i++;
    }
  }
}
