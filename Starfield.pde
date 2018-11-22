/** Starfield Project
  * Normal stars float towards you
  * The odd star follows your mouse
  * @author Andrea Zhu
  * @date   2018-11-23
  */

Particle[] particles;

void setup()
{
  background(255,255,255);
  size(500,500);
  noStroke();
  
  particles = new Particle[500];
  particles[0] = new OddballParticle();
  particles[1] = new JumboParticle();
  for(int i = 2; i < particles.length;i++)
  {
    particles[i] = new NormalParticle();
  }  
}

void draw()
{
  background(255,255,255);
  for(int i = 0; i < particles.length;i++)
  {
    particles[i].move();
  }
}


class NormalParticle implements Particle
{
  double myX, myY, mySpeed, myAngle;
  float mySize;
  int myColor;
  NormalParticle()
  {
    myX = width/2;
    myY = width/2;
    mySpeed = (float)(Math.random() * 10);
    myAngle = (float)(Math.random() *2*Math.PI);
    mySize = width/100;
    myColor = color(
             (int)(Math.random()*256), //[0,255]
             (int)(Math.random()*256), //[0,255]
             (int)(Math.random()*256)); //[0,255]
  }
  
  public void move() 
  {
    myX += Math.cos((float)(myAngle)) * mySpeed;
    myY += Math.sin((float)(myAngle)) * mySpeed;
    
    show();
  }
  
  public void show() 
  {
    fill(myColor);
    ellipse((float)myX, (float)myY, mySize, mySize);
  }
}


interface Particle
{
   public void move();
   public void show();
}

class OddballParticle implements Particle
{
  int myX, myY,mySize;
  color myColor;
  OddballParticle()
  {
    myX = width/2;
    myY = width/2;
    myColor = color(
             (int)(Math.random()*256), //[0,255]
             (int)(Math.random()*256), //[0,255]
             (int)(Math.random()*256)); //[0,255]
    mySize = width/20;
  }
  
  public void move() 
  {
    if (mouseX > myX)
    {
      myX += (int)(Math.random() *3 + 2); //[2,5)
    } else {
      myX -= (int)(Math.random() *3 + 2); //[2,5)
    }
    if (mouseY > myY)
    {
      myY += (int)(Math.random() *3 + 2); //[2,5)
    } else {
      myY -= (int)(Math.random() *3 + 2); //[2,5)
    }
    show();
  }
  
  public void show() 
  {
    fill(myColor);
    rect(myX, myY, mySize, mySize);
  }
}


class JumboParticle extends NormalParticle
{
  public void show() 
  {
    fill(myColor);
    ellipse((float)myX, (float)myY, mySize * 10, mySize*10);
  }
}
