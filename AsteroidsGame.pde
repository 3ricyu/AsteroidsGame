//your variable declarations here
Spaceship fox;
Star[] lots;
ArrayList<Asteroids> rocks;

boolean accel = false;
boolean deccel = false;
boolean rotateRight = false;
boolean rotateLeft = false;
public void setup() 
{
  size(600,600);
  fox = new Spaceship();
  lots = new Star[100];
  rocks = new ArrayList<Asteroids>();
  
  for (int i = 0; i < lots.length; i++)
  {
    lots[i] = new Star();
  }
  for (int i = 0; i < 30; i++)
  {
    rocks.add(new Asteroids());
  }
  //your code here
}
public void draw() 
{
  background(0);
  
  if (accel == true) fox.accelerate(0.05);
  if (deccel == true) fox.accelerate(-0.05);
  if (rotateLeft == true) fox.turn(-5);
  if (rotateRight == true) fox.turn(5);
  for (int i = 0; i < lots.length; i++)
  {
    lots[i].show();
  }
  for (int i = 0; i < rocks.size(); i++)
  {
   rocks.get(i).show();
   rocks.get(i).move();
   float d = dist(fox.getX(),fox.getY(),rocks.get(i).getX(),rocks.get(i).getY());
   if (d < 10)
     rocks.remove(i);
  }
  fox.show();
  fox.move();
  //your code here
}
public void keyPressed()
{
  if(keyCode == UP)accel = true;
  if(keyCode == LEFT)rotateLeft = true;
  if(keyCode == RIGHT)rotateRight = true;
  if(keyCode == DOWN) deccel = true;
  //hyperspace
  if(key == ' ')
  {
    fox.setX((int)(Math.random()*width));
    fox.setY((int)(Math.random()*height));
    fox.setPointDirection((int)(Math.random()*360));
    fox.setDirectionX(0);
    fox.setDirectionY(0);
  }
   
}

void keyReleased()
{
  if (keyCode == UP) accel = false;
  if (keyCode == LEFT) rotateLeft = false;
  if (keyCode == RIGHT) rotateRight = false;
  if (keyCode == DOWN) deccel = false;
}
