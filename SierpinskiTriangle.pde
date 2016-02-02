int yes = 20;

void setup()
{

size(700, 700);
background(0,0,0);
}
void draw()
{
	background(0, 0, 0);
sierpinski(0,700,700);

}
void mouseMoved(){

	if ((mouseX>=0)&&(mouseX<=100)) {
	yes=22;
	}
	if ((mouseX>=101)&&(mouseX<=200)) {
	yes=44;
	}
	if ((mouseX>=201)&&(mouseX<=300)) {
	yes=80;
	}
	if ((mouseX>=301)&&(mouseX<=400)) {
	yes=88;
	}
	if ((mouseX>=401)&&(mouseX<=500)) {
	yes=175;
	}
	if ((mouseX>=501)&&(mouseX<=600)) {
	yes=350;
	}
	if ((mouseX>=601)&&(mouseX<=700)) {
	yes=700;
	}
}
void sierpinski(int x, int y, int len) 
{
	noStroke();
	fill(random(0, 255), random(0, 255), random(0, 255));
	if (len>yes) {
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}
	else{
		triangle(x, y, x+len, y, x+len/2, y-len);
	}
}
