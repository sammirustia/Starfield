
NormalParticle [] lots;

void setup()
{
	size(600,600);
	lots = new NormalParticle[100];
	for(int i = 0;i < lots.length; i++)
	{
		lots[i] = new NormalParticle();
		lots[1] = new OddballParticle();
	}
}
void draw()
{
	background(0);
	for(int i = 0;i < lots.length;i++)
	{
		lots[i].move();
		lots[i].show();
	}
	
}
class NormalParticle implements Particle
{
	double nX, nY, nAngle, nSpeed;
	int nColor;

	NormalParticle() 
	{
		nX = 300;
		nY = 300;
		nAngle = (11*Math.PI);
		nSpeed = 10;
		nColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	}
	
	public void move() 
	{
		nX = nX + (Math.cos((int)(nAngle))*(int)nSpeed);
		nY = nY + (Math.sin((int)(nAngle))*(int)nSpeed);
		nAngle = nAngle + (Math.random()*(Math.PI / 12));
	}
	
	public void show()
	{
		fill(nColor);
		ellipse((int)nX,(int)nY, 10,10);
	}

	

}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle
{
	double nX, nY, nAngle, nSpeed;
	int nColor;
	
	OddballParticle()
	{
		nX = 300;
		nY = 300;
		nAngle = (11*Math.PI);
		nSpeed = 10;
		nColor = color(150,100,100);
	}

	void move() 
	{
		nX = nX + (Math.cos((int)(nAngle))*(int)nSpeed);
		nY = nY + (Math.sin((int)(nAngle))*(int)nSpeed);
		nAngle = nAngle + (Math.random()*(Math.PI / 12));
	}

	void show() 
	{
		fill(nColor);
		rect(nX,nY,20,20);
	}
}
class JumboParticle //uses inheritance
{
	//your code here
}

