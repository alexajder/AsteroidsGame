class Spaceship extends Floater  
{
  public Spaceship() {
    corners = 3;  //the number of corners, a triangular floater has 3   
    xCorners = new int[corners];   
    yCorners = new int[corners];  
    xCorners[0] = -8; 
    yCorners[0] = -8; 
    xCorners[1] = 16; 
    yCorners[1] = 0; 
    xCorners[2] = -8; 
    yCorners[2] = 8; 
    myColor = color(255,182,193);   //white space 
    myCenterX = myCenterY = 300; //holds center coordinates   
    myXspeed = myYspeed = 0; //holds the speed of travel in the x and y directions     
    myPointDirection = (int)(Math.random()*360);
  }
  public void setXspeed(double x) {
    myXspeed = x; 
  }
  public void setYspeed(double y) {
    myYspeed = y; 
  }
  public double getXspeed() {
    return myXspeed; 
  }
  public double getYspeed() {
    return myYspeed; 
  }
  public void setPointDirection(double d) {
    myPointDirection = d; 
  }
  public double getPointDirection() {
    return myPointDirection; 
  }
  public void setX(double x) {
    myCenterX = x; 
  }
  public int getX() {
    return (int)myCenterX; 
  }
  public void setY(double y) {
    myCenterY = y; 
  }
  public int getY() {
    return (int)myCenterY; 
  }
}
