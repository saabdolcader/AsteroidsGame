class Star //note that this class does NOT extend Floater
{
  protected int myX, myY, myColor;
  public Star() {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255)); 
  }
  public void show() {
    fill(myColor);
    noStroke();
    ellipse(myX, myY, 3, 3);
  }
}
