class Flowers {

  float r;         //radius petal
  float n_petal;   //petal number
  float x;         //position of flower center
  float y;         //position of flower center
  int colorPetal;  //petal color
  int colorCenter; //center color
  int xspeed=2;    //speed in x direction
  int yspeed=2;    //speed in y direcction

  Flowers( float t_r, float t_n_petal, float t_x, float t_y, int t_colorPetal, int t_colorCenter) {
    r=t_r;
    n_petal=t_n_petal;
    x=t_x;
    y=t_y;
    colorPetal=t_colorPetal;
    colorCenter=t_colorCenter;
  }
  void display() {
    fill(colorPetal);
    for (float i=0; i<PI*2; i+=2*PI/n_petal) {
      float bx=x + r*cos(i);
      float by=y + r*sin(i);
      ellipse(bx, by, r, r);
    }
    fill(colorCenter);
    ellipse(x, y, r*1.2, r*1.2);
    
    //move();        //make flowers move
    //bounce();      //make flowers bounce when wall hit
  }

  void move() {
    x = x + xspeed;
    y = y + yspeed;
  }
  void bounce() {

    if ((x > width)||(x < 0)) {
      xspeed = xspeed *-1;
    }
    if ((y > height)||(y < 0)) {
      yspeed = yspeed *-1;
    }
  }
}
