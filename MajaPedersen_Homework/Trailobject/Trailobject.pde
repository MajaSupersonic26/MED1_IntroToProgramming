int num = 50;
float Ox;
float Oy;
float Ow;
float Oh;
int[] x = new int[num];
int[] y = new int[num];
int indexPosition = 0;
Object myObject;        //initializing object

void setup() {
  size(400, 400);
  noStroke();
  fill(0,175,175, 102);
}

void draw() {
  background(0);
  myObject= new Object(Ox, Oy, Ow, Oh);  //calling new object
  myObject.display();                    //showing from class
}
