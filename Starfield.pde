Particle [] stars;

void setup()
{
	size(600,600);
	stars = new Particle[100];
	for(int i = 0;i < stars.length; i++)
	{
		stars[i] = new NormalParticle();
		stars[0] = new OddballParticle();
		stars[1] = new JumboParticle();
	}
	
}
void draw()
{
	background(0);
	for(int i = 0;i < stars.length;i++)
	{
		stars[i].move();
		stars[i].show();
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
		nColor = color(255);
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
		rect((float)nX,(float)nY,20,20);
	}
}
class JumboParticle extends NormalParticle
{
	JumboParticle() 
	{

	}
	void show()
	{
		ellipse((float)nX,(float)nY,50,50);
	}
}

