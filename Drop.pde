class Drop {
  //location and speed
  float x;
  float y;
  color c;
  float r;
  float speed;

  Drop() {
    this.r = 8; //drops will have same size
    this.x = random(width); //x totally random
    this.y = -r * 4; //start a little above window
    this.speed = random(1, 5);
    this.c = color(50, 100, 150);
  }

  //Move the raindrop down, which in terms of Processing
  //means incrementing downwards
  public void fall() {
    this.y+=speed;
  }

  //motion at edges
  public boolean reachedBottom() {
    if (y > height +r*4) {
      return true;
    } else {
      return false;
    }
  }

  public void display() {
    fill(50, 100, 150);
    noStroke();
    ellipse(x, y, r*2, r*2);
  }

  public void caught() {
    speed = 0;
    y = -1000;
  }
}