Catcher catcher;
//all Ball data was for debugging
//Ball ball1;
//Ball ball2;
Timer timer;
Drop rainDrops[] = new Drop[1000];
int totalDrops = 0;

public void setup() {
  size(1000, 700);
  catcher = new Catcher(32, 0, 0);
  rainDrops = new Drop[1000];
  timer = new Timer(300);
  timer.startTimer();
}

public void draw() {
  background(255);
  catcher.xPosition = mouseX;
  catcher.yPosition = mouseY;
  catcher.displayCatcher();

  if (timer.isTimeFinished() == true) {
    rainDrops[totalDrops] = new Drop();
    totalDrops++;
    if (totalDrops >= rainDrops.length) {
      totalDrops = 0;
    }
    timer.startTimer();
  }

  for (int i=0; i<totalDrops; i++) {
    rainDrops[i].fall();
    rainDrops[i].display();

    if (catcher.intersect(rainDrops[i])) {
      rainDrops[i].caught();
    }
  }
}