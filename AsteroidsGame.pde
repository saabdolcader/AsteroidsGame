Spaceship bob = new Spaceship();
Star[] sky = new Star[200];
ArrayList <Asteroids> list = new ArrayList <Asteroids>(); 
ArrayList <Bullet> shoot = new ArrayList <Bullet>();
int ast = 15;
public void setup() 
{
  size(500,500);
  for(int i = 0; i < sky.length; i++)
  {
    sky[i] = new Star();
  }
  for(int j = 0; j < ast; j++)
  {
    list.add(new Asteroids());
  }
}
public void draw() 
{
  background(0,0,0);
  bob.move();
  bob.show();
  for(int p = 0; p < sky.length; p++)
  {
    sky[p].show(); 
  }
  for(int s = 0; s < list.size(); s++)
  {
    list.get(s).show();
    list.get(s).move();
    double distance = dist(bob.getCenterX(), bob.getCenterY(), list.get(s).getX(), list.get(s).getY());
    if (distance < 20)
    {
      list.remove(s);
      s--;
    }
  }
  for(int k = 0; k < shoot.size(); k++)
  {
    shoot.get(k).show();
    shoot.get(k).move();
    for(int r = 0; r < list.size(); r++)
    {
      double distHit = dist(shoot.get(k).coorX(), shoot.get(k).coorY(), list.get(r).getX(), list.get(r).getY());
      if (distHit < 20)
      {
        shoot.remove(k);
        list.remove(r);
        break;
      }
    }
  }
}
public void keyPressed()
{
  if (key == 's') //hyperspace
  {
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.setCenterX((int)(Math.random()*500));
    bob.setCenterY((int)(Math.random()*500));
    bob.setDirection((Math.random()*360)-180);
  }
  if (key == 'w')
  {
    bob.accelerate(1);
  }
  if (key == 'a')
  {
    bob.turn(-30);
    for(int y = 0; y < shoot.size(); y++)
    {
      shoot.get(y).turn(-30);
    }
  }
  if (key == 'd')
  {
    bob.turn(30);
    for(int h = 0; h < shoot.size(); h++)
    {
      shoot.get(h).turn(30);
    }
  }
  if (key == ' ')
  {
    shoot.add(new Bullet(bob));
  }
}
