class Star //note that this class does NOT extend Floater
{
  private int myX, myY, myColor;
  public Star()
  {
    myX = (int)(Math.random()*700); 
    myY = (int)(Math.random()*700); 
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));; 
  }
  public void show() 
  { 
    fill(myColor); 
    ellipse(myX, myY, 3, 3); 
  }
}
