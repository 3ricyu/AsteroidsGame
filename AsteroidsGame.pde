//your variable declarations here
Spaceship fox;
Star lots;

boolean accel = false;
boolean deccel = false;
boolean rotateRight = false;
boolean rotateLeft = false;
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
  if (accel == true) fox.accelerate(0.2);
  if (deccel == true) fox.accelerate(-0.2);
  if (rotateLeft == true) fox.turn(-5);
  if (rotateRight == true) fox.turn(5);
  //your code here
}
public void keyPressed()
{
  if(keyCode == UP)accel = true;
  if(keyCode == LEFT)rotateLeft = true;
  if(keyCode == RIGHT)rotateRight = true;
  if(keyCode == DOWN) deccel = true;
   
}

void keyReleased()
{
  if (keyCode == UP) accel = false;
  if (keyCode == LEFT) rotateLeft = false;
  if (keyCode == RIGHT) rotateRight = false;
  if (keyCode == DOWN) deccel = false;
}
