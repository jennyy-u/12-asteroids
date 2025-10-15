class Bullet extends GameObject {

  //instance variables
  int timer;


  //constructor
  Bullet() {
    super(player1.loca.copy(), player1.direct.copy());
    velo.setMag(10);
    timer = 60;
    d = 5;
  }


  void show() {
    strokeWeight(2);
    stroke(white);
    fill(black);
    pushMatrix();
    //translate(loca.x, loca.y);
    circle(loca.x, loca.y, d);
    popMatrix();
  }

  void act() {
    loca.add(velo);
    wrapAround();
    timer--;
    if (timer == 0) lives = 0;
  }
}
