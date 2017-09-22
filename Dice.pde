int result=0;
void setup()
{
  size(400, 430);
  noLoop();
}
void draw()
{
  background(255);
  int diceFinal=0;
  for (int y=10; y<350; y=y+60)
  {
    for (int x=10; x<370; x= x+55)
    {
      Die bob= new Die(x, y);
      bob.show();
      diceFinal=diceFinal+result;
    }
  }
 
 fill(0);
  textSize (40);
  text ("Total Roll= " + diceFinal, 10, 410);
  
}

void mousePressed()
{
  result=0;
  redraw();
  
}
class Die //models one single dice cube
{

  int myX, myY, dieRoll;
  Die(int x, int y) //constructor
  {
    myX=x;
    myY=y;
    roll();
  }
  void roll()
  {
    double dieRoll = 0;
    dieRoll = Math.random();
    if (dieRoll < 0.16)
    {
      result = 1;
    } else if (dieRoll < 0.32)
    {
      result = 2;
    } else if (dieRoll < 0.48)
    {
      result = 3;
    } else if (dieRoll < 0.64)
    {
      result = 4;
    } else if (dieRoll < 0.8)
    {
      result = 5;
    } else if (dieRoll < 0.96)
    {
      result = 6;
    }
  }
  void show()
  {
    fill (random(256), random(256), random(256));        
    noStroke();
    rect(myX, myY, 50, 50, 10);
    if (Math.random()<0.16)
    {
      fill(255);
      ellipse(myX+25, myY+25, 10, 10);
    } else if (Math.random()<0.32)
    {
      fill(255);
      ellipse (myX+15, myY+18, 10, 10);
      ellipse (myX+35, myY+32, 10, 10);
    } else if (Math.random()<0.48)
    {
      noStroke();
      fill(255);
      ellipse (myX+15, myY+15, 10, 10);
      ellipse (myX+25, myY+25, 10, 10);
      ellipse (myX+35, myY+35, 10, 10);
    } else if (Math.random()<0.64)
    {
      noStroke();
      fill(255);
      ellipse (myX+15, myY+35, 10, 10);
      ellipse (myX+15, myY+15, 10, 10);
      ellipse (myX+35, myY+35, 10, 10);
      ellipse (myX+35, myY+15, 10, 10);
    } else if (Math.random()<0.80)
    {
      noStroke();
      fill(255);
      ellipse (myX+15, myY+35, 10, 10);
      ellipse (myX+15, myY+15, 10, 10);
      ellipse (myX+35, myY+35, 10, 10);
      ellipse (myX+35, myY+15, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
    } else if (Math.random()<0.96)
    {
      noStroke();
      fill(255);
      ellipse(myX+15, myY+10, 10, 10);
      ellipse(myX+35, myY+10, 10, 10);
      ellipse(myX+15, myY+25, 10, 10);
      ellipse(myX+35, myY+25, 10, 10);
      ellipse(myX+15, myY+40, 10, 10);
      ellipse(myX+35, myY+40, 10, 10);
    }
  }
}