//your variable declarations here
Spaceship fox;
public void setup() 
{
  size(600,600);
  fox = new Spaceship();
  //your code here
}
public void draw() 
{
  background(0);
  fox.show();
  fox.move();
  //your code here
}
public void keyPressed()
{
  if(keyCode == UP)
    fox.accelerate(0.3);
  if(keyCode == LEFT)
    fox.turn(-5);
  if(keyCode == RIGHT)
    fox.turn(5);
  if(keyCode == DOWN)
    fox.accelerate(-0.3);
}
