//your code here
void setup()
{
  size(300,300);
}
void draw()
{
  //your code here
}
class NormalParticle
{
  double myX, myY, mySpeed, myAngle;
  NormalParticle()
  {
    myX = 150;
    myY = 150;
    mySpeed = Math.random() * 10;
    myAngle = Math.PI;
  }
  
  void move() 
  {
    myX += Math.cos(myAngle) * mySpeed;
    myY += Math.sin(myAngle) * mySpeed;
  }
  
  void show() 
  {
    eclipse(
  }
}
interface Particle
{
   
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}
