class Bullet extends Floater {
  public Bullet(Spaceship theShip) {
    myCenterX = theShip.getX(); 
    myCenterY = theShip.getY(); 
    myXspeed = theShip.getXspeed(); 
    myYspeed = theShip.getYspeed(); 
    myPointDirection = theShip.getPointDirection(); 
    accelerate(6); 
  }
  public void show() {
    fill(255); 
    ellipse((float)myCenterX, (float)myCenterY, 10, 10); 
  }
   public float getX()
  {
    return (float)myCenterX;
  }
  public float getY()
  {
    return (float)myCenterY;
  }
}
