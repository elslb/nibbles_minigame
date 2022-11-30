class Cloud{
  float cloudx;
  float cloudy;
  float cloudc;
  float cloudvx;
  float moving;

Cloud(float x, float y, float c, float vx) {
  cloudx = x;
  cloudy = y;
  cloudc = c;
  cloudvx = vx;
  moving=200;
}
  /*Moving clouds using "if" statement,
  cloud spawns at a random y position between -100 and 600,
  once it reaches 800 pixels on the x-axis, the cloud resets to -200 pixels*/
 void moveCloud() {
    cloudx=cloudx+cloudvx;
 
    if (cloudx>width + moving) {
      cloudx=0-moving;
      cloudy=random(-100, 600);
    }
  }

  //Draw the clouds
  void drawCloud() {
    noStroke();
    fill(cloudc,250,250,200);
    rectMode(CENTER);
    rect(100+cloudx,123+cloudy,130,80,50);
    rect(150+cloudx,150+cloudy,80,60,70);
    rect(40+cloudx,138+cloudy,70,50,50);

  }
}
