int sideLength = 10;

public void setup()
{
	size(1000,650);
	background(0);
}
public void draw()
{
	background(0);
	sierpinski(200,625,600);
}
public void mouseDragged()//optional
{
	if(mouseY < 81)
		sideLength = 600;
	else if(mouseY < 163)
		sideLength = 300;
	else if(mouseY < 244)
		sideLength = 150;
	else if(mouseY < 325)
		sideLength = 75;
	else if(mouseY < 406)
		sideLength = 37;
	else if(mouseY < 489)
		sideLength = 16;
	else if(mouseY < 568)
		sideLength = 10;
	else 
		sideLength = 5;
}
public void sierpinski(int x, int y, int len) 
{
	if(len > sideLength){
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
		// triangle(x, y, x+len/2, y, x+len/4, y-len/2);
		// triangle(x+len/2, y, x+len, y, x+(3*len/4), y-len/2);
		// triangle(x+len/4, y-len/2, x+(3*len/4), y-len/2, x+len/2, y-len);
	}
	else{
		noStroke();
		fill((int)(Math.random()*255), 0, 255);
		triangle(x, y, x+len, y, x+len/2, y-len);
	}

}