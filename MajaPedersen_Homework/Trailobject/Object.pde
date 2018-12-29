class Object {

  float Ox;
  float Oy;
  float Ow;
  float Oh;

  Object(float t_Ox, float t_Oy, float t_Ow, float t_Oh) {
    Ox=t_Ox;
    Oy=t_Oy;
    Ow=t_Ow;
    Oh=t_Oh;
  }

  void display() {
    x[indexPosition] = mouseX;
    y[indexPosition] = mouseY;
                                      
    indexPosition = (indexPosition + 1) % num;// Cycle between 0 and the number of elements
    
    for (int i = 0; i < num; i++) {                                    
      int pos = (indexPosition + i) % num;// Set the array position to read
      float radius = (num-i) / 2.0;
      rect(x[pos], y[pos], radius, radius);
    }
  }
}
