//your variable declarations here
Spaceship bob = new Spaceship(); 
Star[] nightSky = new Star[300]; 
ArrayList<Asteroid> tay = new ArrayList <Asteroid>(); 

public void setup() 
{
  size(600, 600); 
  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i] = new Star();
  }
  for (int i = 0; i < 1; i++) {
    tay.add(0, new Asteroid());
  }
}
public void draw() 
{
  background(0); 
  bob.show();
  bob.move();
  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i].show();
  }
  for (int i = 0; i < tay.size(); i++) {
    tay.get(i).show(); 
    tay.get(i).move(); 

    if (dist(bob.getX(), bob.getY(), tay.get(i).getX(), tay.get(i).getY()) <= 20) {
      tay.remove(i);
    }
  }
}
public void keyPressed() {
  if (key == 'l') {
    bob.turn(5);
  }
  if (key == 'r') {
    bob.turn(-5);
  }
  if (key == 'a') {
    bob.accelerate(0.2);
  } else if (key == 'h') {
    bob.setXspeed(0);
    bob.setYspeed(0); 
    bob.setPointDirection((int)(Math.random()*360)); 
    bob.setX((int)(Math.random()*400)); 
    bob.setY((int)(Math.random()*400));
  }
}
