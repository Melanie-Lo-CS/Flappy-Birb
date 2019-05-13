class birb {
  float x;
  float y;
  float diameter;
  color colour;
  float xSpeed;
  float ySpeed;
  float score;
  float gravity = 0.2;


  birb(float x, float y, color MyColour) {
    this.x = x;
    this.y = y;
    diameter = 20;
    this.colour = MyColour;
    xSpeed = 3;
    ySpeed = 5;
    score = 0;
  }
  
  void reset() {
    this.y = height/2;
  }
  void step() {
    gravity += 0.2;
    y += gravity;

    if ((keyPressed || mousePressed) && gravity > 1) {
      gravity = -4;
    }
   
    if(birb.y >= 600){
      scene = 2;
    }
  }
   
  }
