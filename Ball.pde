/*Debugging class I method to test my logic for two things
 1) motion at the edges
 2) intersection algo
 */
class Ball {
  float ballX; //x location of ball
  float ballY; //y location of ball
  float ballRadius; //radius of ball
  float xSpeed; //speed along x-axis
  float ySpeed; //speed along y-axis
  color c;

  Ball(float ballRadius) {
    this.ballRadius = ballRadius;
    //for the position and speed, we are choosing random values
    this.ballX = random(width);
    this.ballY = random(height);
    this.xSpeed = 5;
    this.ySpeed = 5;
  }

  public void ballMove() {
    ballX += xSpeed;
    ballY += ySpeed;

    //if ball is at the edge, rebound
    //simply turn speed to minus as it indicates
    //opposite direction
    if (ballX > width || ballX < 0) {
      xSpeed *= -1;
    }
    if (ballY > height || ballY < 0) {
      ySpeed *= -1;
    }
  }

  public void displayBall() {
    stroke(0);
    fill(c);
    ellipse(ballX, ballY, ballRadius*2, ballRadius*2);
    c = color(100, 50);
  }

  public boolean ballIntersection(Ball ball) {
    //using dist() method for intersection
    //if distance is less than the sum of radii, intersection
    //else, no intersection
    float distance = dist(ballX, ballY, ball.ballX, ball.ballY);
    if (distance < (ball.ballRadius + ballRadius)) {
      return true;
    } else {
      return false;
    }
  }

  public void highLight() {
    c = color(0, 150);
  }
}