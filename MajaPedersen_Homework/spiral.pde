float x;
float y;
float r;
float c;
float cc=100;
float h;
float f;
float w;
float ww=20;
float v;
float theta;

void setup (){
  size(700,700);
  background(255);
  
}
void draw(){
  x=r*cos(theta);
  y=r*sin(theta);
  
  c=cc*noise(f);
  f+=0.10;

  
  w=ww*noise(v);
  v+=0.10;
  
  noStroke();
  fill(0,0,c,127);
  ellipse(x+width/2,y+height/2,w,w);
    
  theta-=0.05;
  r+=0.1;
}
