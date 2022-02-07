public void setup()
{
  background(#6BB6DE);
  size(500,500);
}
public void draw()
{
  sierpinski(30,475, 450);
}

public void sierpinski(int x, int y, int len) 
{
 if(len <= 7)
  {
    fill(#5464E8);
    triangle(x, y, x+len, y, x + (len/2), y-len);
  }
  else
  {
    sierpinski(x, y, len/2);
    sierpinski(x+(len/2), y, len/2);
    sierpinski(x+(len/4), y- (len/2), len/2);
  }
}
