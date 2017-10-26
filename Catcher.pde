//this is the user defined 'catcher' that moves with the mouse
//object created in RainGame
class Catcher {
  float xPosition; //xPostion of catcher
  float yPosition; //yPosition of catcher
  float radius; //radius of catcher

  Catcher(float radius, float xPosition, float yPosition) {
    this.xPosition = xPosition; 
    this.yPosition = yPosition; 
    this.radius = radius;
  }

  //displaying catcher
  public void displayCatcher() {
    stroke(127);
    fill(127);
    ellipse(xPosition, yPosition, radius*2, radius*2);
  }

  public boolean intersect(Drop d) {
    //using dist() method for intersection
    //if distance is less than the sum of radii, intersection
    //else, no intersection
    float distance = dist(xPosition, yPosition, d.x, d.y);
    if (distance < (radius+d.r)) {
      return true;
    } else {
      return false;
    }
  }
}