class Star //note that this class does NOT extend Floater
{
  int starX;
  int starY;
  int starColor;
  Star()
  {
    starX = (int)(Math.random()*width);
    starY = (int)(Math.random()*width);
    starColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  public void show()
  {
    stroke(starColor,30 );
    fill(starColor);
    ellipse((float)starX,(float)starY,5,5);
  }
  //your code here
}
