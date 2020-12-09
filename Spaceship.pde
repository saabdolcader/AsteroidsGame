class Spaceship extends Floater  
{   
   public Spaceship() {
     corners = 4;
     xCorners = new int[]{-8, 16, -8, -2};
     yCorners = new int[]{-8, 0, 8, 0};
     myColor = color(255);
     myCenterX = 250;
     myCenterY = 250;
     myXspeed = 0;
     myYspeed = 0;
     myPointDirection = 0;
   }
   public void setCenterX(int x) {
     myCenterX = x;
   }
   public void setCenterY(int y) {
     myCenterY = y;
   }
   public void setXspeed(double xspeed) {
       myXspeed = xspeed;
   }
   public void setYspeed(double yspeed) {
       myYspeed = yspeed;
   }
   public void setDirection(double direction) {
     myPointDirection += direction;
   }
    public int getCenterX() {
     return myCenterX;
   }
   public int getCenterY() {
     return myCenterY;
   }
   public double getDirection() {
     return myPointDirection;
   }
   public double getXspeed() {
     return myXspeed;
   }
   public double getYspeed() {
     return myYspeed;
   }
}
