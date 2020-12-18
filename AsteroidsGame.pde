//your variable declarations here
Spaceship bob = new Spaceship(); 
Star[] nightSky = new Star[300]; 
ArrayList<Asteroid> tay = new ArrayList <Asteroid>(); 
ArrayList<Bullet> shots = new ArrayList<Bullet>(); 
int num = 20; 

public void setup() 
{
  size(600, 600); 
  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i] = new Star();
  }
  for (int i = 0; i < 10; i++) {
    tay.add(i, new Asteroid());
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
  //spaceship and asteroid collision 
  for (int i = 0; i < tay.size(); i++) {
    float distance = dist(bob.getX(), bob.getY(), tay.get(i).getX(), tay.get(i).getY()); 
    if (distance < 20) {
      tay.remove(i);
      num = num - 1; 
    } else {
      tay.get(i).show(); 
      tay.get(i).move(); 
    }
  }
  //bullet and asteroid collision 
  for (int i = 0; i < shots.size(); i++) {
    for (int j = 0; j < tay.size(); j++) {
     if (dist((float)shots.get(i).getX(), (float)shots.get(i).getY(), (float)tay.get(j).getX(), (float)tay.get(j).getY()) < 20) {
        tay.remove(j); 
        shots.remove(i); 
        num--; 
        break; 
      }
    }
  }
    //bullets 
    for (int i = 0; i < shots.size(); i++) {
    shots.get(i).move(); 
    shots.get(i).show(); 
    if(shots.get(i).getY() == 0 || shots.get(i).getY() == 600 || shots.get(i).getX() == 0 || shots.get(i).getX() == 600)
    {
      shots.remove(i);
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
  } if (key == 'd') {
    bob.accelerate(-0.2); 
  } else if (key == 'h') {
    bob.setXspeed(0);
    bob.setYspeed(0); 
    bob.setPointDirection((int)(Math.random()*360)); 
    bob.setX((int)(Math.random()*400)); 
    bob.setY((int)(Math.random()*400));
  } else if (key == 'b') {
    shots.add(new Bullet(bob)); 
    fill(255); 
  }
}
