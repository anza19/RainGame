class Timer {

  int savedTime; //when timer starts
  int totalTime; //how long timer should last

  Timer(int totalTime) {
    this.totalTime = totalTime;
  }

  //this method gets time from the start
  public void startTimer() {
    this.savedTime = millis(); //returns time in ms
  }

  public boolean isTimeFinished() {
    //checks how much time has elapsed
    //returns true if 5 seconds have passed
    int timeElapsed = millis() - savedTime;
    if (timeElapsed > totalTime) {
      return true;
    } else {
      return false;
    }
  }
}