class UFO extends GameObject {

  //instance variables

  //constructor

  UFO() {
    super(random(width), random(height), 0, 0);
  }



  void show() {

    pushMatrix();
    drawUFO();
    popMatrix();
  }


  void act() {
    
    
  }


  void drawUFO() {
    pushMatrix();
    scale(0.8);
    translate(200, 200);
    stroke(greyblue);
    fill(black);
    ellipse(0, 0, 100, 25);
    ellipse(0, -10, 50, 20);
    line(-20, -30, -10, -20);
    circle(-20, -30, 3);
    line(20, -30, 10, -20);
    circle(20, -30, 3);
    popMatrix();
  }
}
