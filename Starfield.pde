NormalParticle stars;
NormalParticle [] lots;

void setup()
{
	size(400,400);
	stars = new NormalParticle();
	lots = new NormalParticle[1000];
	for(int i = 0;i <= lots.length; i++)
	{
		lots[i] = new NormalParticle();
	}
}
void draw()
{
	background(0);
	stars.move();
	stars.show();
	for(int i = 0;i < lots.length;i++)
	{
		lots[i].move();
		lots[i].show();
	}
	
}
class NormalParticle
{
	double nX, nY, nAngle, nSpeed;
	int nColor;

	NormalParticle() 
	{
		nX = (int)(Math.random()*400);
		nY = (int)(Math.random()*400);
		nAngle = Math.PI;
		nSpeed = Math.random()*10;
		nColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	}
	
	void move() 
	{
		nX = nX + (Math.cos((int)(nAngle))*(int)nSpeed);
		nY = nY + (Math.sin((int)(nAngle))*(int)nSpeed);
	}
	
	void show()
	{
		fill(nColor);
		ellipse((int)nX,(int)nY, 10,10);
	}

	

}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

