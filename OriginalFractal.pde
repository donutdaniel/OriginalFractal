public void setup(){
	size(500,500);
	background(255);
	noLoop();
}

public void draw(){
	fractal(0,0,0,500,0);
}

public void fractal(int x, int y, int x1, int y1, int rep){
	if(rep>=250){
	}
	line(x, y, x1, y1);
	fractal(0,y+5,x1+5,500, rep+1);
	//fractal(x+5,500,500,y1-5, rep+1);
}