class ball {

  float bx;
  float by;
  int bsize;

  float xpeed;
  float ypeed;
  
  int counts;


  ball( float t_bx, float t_by, int t_bsize, float t_xpeed, float t_ypeed) {

    bx=t_bx;
    by=t_by;
    bsize=t_bsize;
    xpeed=t_xpeed;
    ypeed=t_ypeed;

    
  }


  void displayBall() {
    ellipse(bx, by, bsize, bsize);
    
    fill(#FFFFFF);//countertext
    textSize(20);
    text(counts, textp, textp);
  }

  void reset() {
    by=height/2;
    bx=width/2;
    counts=0;
    ypeed=3;
    xpeed=3;
  }

  void move() {
    //speed of ball coordinate changes
    bx=bx+xpeed;
    by=by+ypeed;

    //bouncing off the 3 top walls
    if (bx>width||bx<0) {
      xpeed=-xpeed;
    } 
    if (by<0) {
      ypeed=-ypeed;
    }
    //if hitting paddle
    if ((by>height-(recth/2)) && (bx>mouseX-(rectw/2))&&(bx<mouseX+(rectw/2)) ) {
      ypeed=-ypeed;
      ypeed*=1.25;
      counts+=1;
    }
    //if hitting back wall
    if (by>height) {
      reset();
    }
      if (mousePressed == true){
    ypeed=4;
    xpeed=-4;
    background(random(0,250),random(0,250),random(0,250),175);
      }
  }
}
