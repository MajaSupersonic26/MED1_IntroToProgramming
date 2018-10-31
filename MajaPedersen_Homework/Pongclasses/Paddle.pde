class pad {
  
  
  int rectY;
  int rectw;
  int recth;
  int x;
  
  pad(int t_x, int t_rectY, int t_rectw, int t_recth){
    
    x=t_x;
    rectY=t_rectY;
    rectw=t_rectw;
    recth=t_recth;
  }
  void displayPad(){
  fill(#FFFFFF);
  rectMode(CENTER);
  rect(mouseX, rectY, rectw, recth);
  

  
  }
}
