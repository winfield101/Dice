int count = 0;
void setup()
{	size(400,400);
	noLoop();


	
	
}
void draw()
{	background(0);
	fill(0);
	rect(0,0,200,200);
	for(int y= 50; y<=300; y=y+60)
	{	for( int x = 50; x<=300; x = x+60)
		{	
			Die one = new Die(x, y);
			one.show();

		}
		
	}
	fill(0);
	rect(0,0,20,20);	
	fill(255);
	text("Score:" + count,30,30);
	
}

void mousePressed()

{	count= 0;
	redraw();

}

class Die //models one single dice cube
{
	int diceNum,myX,myY;

	Die(int x, int y) //constructor
	{	diceNum = (int)(Math.random()*6)+1;
		count = diceNum +count;
		myX=x;
		myY=y;

	}

	void show()
	{	
		fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		rect(myX,myY, 50,50);
		noStroke();
		fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		if(diceNum ==1)
		{
			ellipse(myX+25,myY+25,10,10);
		}
		
		else if(diceNum ==2)
		{
			ellipse(myX+13,myY+13,10,10);
			ellipse(myX+36,myY+36,10,10);
		}
		else if(diceNum==3)
		{
			ellipse(myX+13,myY+13,10,10);
			ellipse(myX+24,myY+24,10,10);
			ellipse(myX+36,myY+36,10,10);

		}
		else if(diceNum==4)
		{
			ellipse(myX+13,myY+13,10,10);
			ellipse(myX+36,myY+36,10,10);
			ellipse(myX+13,myY+36,10,10);
			ellipse(myX+36,myY+13,10,10);
		}
		else if(diceNum==5)
		{
			ellipse(myX+13,myY+13,10,10);
			ellipse(myX+36,myY+36,10,10);
			ellipse(myX+13,myY+36,10,10);
			ellipse(myX+36,myY+13,10,10);
			ellipse(myX+24,myY+24,10,10);
		}
		else if(diceNum==6)
		{
			ellipse(myX+13,myY+13,10,10);
			ellipse(myX+13,myY+24,10,10);
			ellipse(myX+13,myY+36,10,10);
			ellipse(myX+36,myY+13,10,10);
			ellipse(myX+36,myY+24,10,10);
			ellipse(myX+36,myY+36,10,10);
		}
	}
}
