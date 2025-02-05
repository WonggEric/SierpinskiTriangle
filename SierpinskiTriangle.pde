
public void setup() {
  size(1000, 1000);
  strokeWeight(1);
}

public void draw() { 
  background(255);  
  sierpinski(235, 740, 550,20);
}

public void sierpinski(int x, int y, int len, int n) {  
  if (len <= n) {  
    return;
  } else {
    float x2 = x + len;
    float y2 = y;
    float x3 = x + len / 2;
    float y3 = y - len * sqrt(3) / 2;
    triangle(x, y, x2, y2, x3, y3);

    sierpinski(x, y, len / 2);  
    sierpinski(x + len / 2, y, len / 2);  
    sierpinski(x + len / 4, int(y - (len * sqrt(3) / 4)), len / 2);
  }
}

