class Bullet extends Floater
{
  public Bullet(Spaceship bob) 
  {  
    myColor = color(153,50,204);   
    myCenterX = bob.getCenterX() + 4;
    myCenterY = bob.getCenterY(); 
    myXspeed = bob.getXspeed();
    myYspeed = bob.getYspeed();
    myPointDirection = bob.getDirection();
    accelerate(6.0);
  }
  public void show()
  {
    fill(myColor);
    noStroke();
    ellipse(myCenterX, myCenterY, 10, 10);
  }
  public int coorX()
  {
    return myCenterX;
  }
  public int coorY()
  {
    return myCenterY;
  }
}
