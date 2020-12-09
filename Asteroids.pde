class Asteroids extends Floater
{
  private double rotSpeed;
  public Asteroids()
  {
    corners = 6;
    xCorners = new int[]{-11, 5, 13, 5, -9, -5};
    yCorners = new int[]{-6, -8, 0, 10, 8, 0};
    myColor = color(100);
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = (int)(Math.random()*7 + 2) - 2;
    myYspeed = (int)(Math.random()*5 - 2);
    myPointDirection = (int)((Math.random()*360)-180);
    rotSpeed = (int)(Math.random()*5 + 1);
  }
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }
  public int getX()
  {
    return myCenterX;
  }
  public int getY()
  {
    return myCenterY;
  }
}
