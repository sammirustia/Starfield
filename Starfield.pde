//your code here
void setup()
{
	size(400,400);
}
void draw()
{
	//your code here
}
class NormalParticle
{
	double nX;
	double nY;
	double nAngle;
	double nSpeed;
	int nColor;

	NormalParticle() 
	{
		nX = (int)(Math.random()*400);
		nY = (int)(Math.random()*400);
		nAngle = 30;
		nSpeed = Math.random()*10;
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

