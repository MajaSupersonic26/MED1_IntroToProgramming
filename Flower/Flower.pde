Flowers myFlower1;
Flowers myFlower2;
Flowers myFlower3;

void setup() {
  size(800, 800);
  background(#43AF76);

  float r=20;
  float n_petals=4;
  float x=100;
  float y=100;
  int petalColor=color(random(255),random(255),random(255));
  int centerColor=color(random(255),random(255),random(255));
  
  myFlower1 = new Flowers(r+random(0,50),n_petals+random(0,10),x+100,y+200,petalColor,centerColor);
  myFlower2 = new Flowers(r+random(0,50),n_petals+random(0,10),x,y,petalColor,centerColor);
  myFlower3 = new Flowers(r+random(0,50),n_petals+random(0,10),x+300,y+100,petalColor,centerColor);
  
}

void draw() {
    
background(#43AF76);

 myFlower1.display();
 myFlower1.move();
 myFlower1.bounce();
 
 myFlower2.display();
 myFlower2.move();
 myFlower2.bounce();
 
 myFlower3.display();
 myFlower3.move();
 myFlower3.bounce();
}  
