NormalParticle[] joshua = new NormalParticle[1500];
JumboParticle[] bob = new JumboParticle[35];
OddballParticle[] NF = new OddballParticle[1];
void setup(){
  size(600, 600);
  for(int i = 0; i < joshua.length; i++){
   joshua[i] = new NormalParticle();
  }
  for(int i = 0; i < bob.length; i++){
   bob[i] = new JumboParticle();
  }
 for(int i = 0; i < NF.length; i++){
   NF[i] = new OddballParticle();
 }
}
void draw()
{
  background(0);
  for(int i = 0; i < joshua.length; i++){
   joshua[i].show();
   joshua[i].move();
  }
  for(int i = 0; i < bob.length; i++){
   bob[i].show();
   bob[i].move();
  }
  for(int i = 0; i < NF.length; i++){
   NF[i].show();
   NF[i].move();
  }
}
class NormalParticle{
  double x, y, myColor, myAngle, mySpeed;
  NormalParticle(){
  x = 300;
  y = 300;
  myColor = 255;
  myAngle = (double)(Math.random()*2*Math.PI);
  mySpeed = (double)(Math.random()*6);
}
public void move(){
  x = x + Math.cos(myAngle)*mySpeed;
  y = y + Math.sin(myAngle)*mySpeed;
}
public void show(){
  fill(255);
  ellipse((float)x, (float)y, 3, 3);
}
}
interface Particle{
  public void show();
  public void move();
}
class JumboParticle{
  double x, y, myColor, myAngle, mySpeed;
  JumboParticle(){
    x = 300;
    y = 300; 
    myAngle = (double)(Math.random()*2*Math.PI);
    mySpeed = (double)(Math.random()*6);
}
public void move(){
  x = x + Math.cos(myAngle)*mySpeed;
  y = y + Math.sin(myAngle)*mySpeed;
}
public void show(){
  fill(140, 100, 90);
  ellipse((float)x, (float)y, 16, 16);
}
}
class OddballParticle{
  double x, y, myAngle, mySpeed;
  OddballParticle(){
    x = 10;
    y = 10; 
    myAngle = (double)(Math.random()*2*Math.PI);
    mySpeed = (double)(Math.random()*6);
  }
  public void move(){
  x = x+5;
  y = y+5;
  }
  public void show(){  
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    ellipse((float)x+65, (float)y+65, 40, 40);        
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    ellipse((float)x, (float)y, 130, 60);  
    fill(0);
    ellipse((float)x + 10, (float)y + 10, 10, 10);
    fill(0);
    ellipse((float)x + 50, (float)y + 10, 10, 10);   
  }
}