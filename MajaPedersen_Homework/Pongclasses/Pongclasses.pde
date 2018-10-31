
ball myBall;
pad myPad;

int bsize=10;

int recttx=10;
int box;
int counts=10;
int rectY=400;
int recth=50;
int rectw=100;
int textp=200;

float bx;
float by;
float xpeed=3;
float ypeed=3;



void setup() {

  size(400, 400);
  background(0);
  
  myBall= new ball(bx,by,bsize,xpeed,ypeed);
  myPad= new pad(mouseX,rectY,rectw,recth);
  
}

void draw() {
  background(0);
  
  
  myBall.displayBall();
  myBall.move();
  myPad.displayPad();
  

  }
  
 
