 Bacteria [] bob;
void setup()
{
  size(1000, 1000);
  bob = new Bacteria [1000];
  for (int i = 0; i < bob.length; i++)
  {
    bob[i] = new Bacteria(450,450);
  }
}

void draw()
{
  background(255);
  for (int i = 0; i < bob.length; i++)
  {
    bob[i].show();
    bob[i].move();
  }
}
class Bacteria
{
  int myX, myY, myColor;
  Bacteria(int x, int y)
  {
    myX = x;
    myY = y;
    myColor = color(0, 0, 255);
  }

  void move()
  {
    if (mouseX > myX)
    myX = myX + (int) (Math.random()*7)-2;
  else
    myX = myX + (int) (Math.random()*7)-4;
  if(mouseY > myY)
     myY = myY + (int) (Math.random()*7)-2;
  else 
     myY = myY + (int) (Math.random()*7)-4;
  }
  void show()
  {
    fill (myColor);
    ellipse(myX, myY, 10, 40);
  }
}