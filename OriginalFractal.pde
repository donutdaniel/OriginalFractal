public void setup(){
	size(1000,1000);
	background(255);
	noLoop();
}

public void draw(){
	fractal(0,0,0,height,0,0);
	fractal(0,0,0,height,0,1);
	fractal(0,0,width,0,0,2);
	fractal(0,0,width,0,0,3);
}

public void fractal(int x, int y, int x1, int y1, int rep, int poo){
	if(rep>=height/2){
	}
	line(x, y, x1, y1);
		if(poo==0){
			fractal(0,y+5,x1+5,height, rep+1,0);
		} else if(poo==1){
			fractal(x+5,height,width,y1-5, rep+1,1);
		} else if(poo==2){
			fractal(x+5,0,width,y1+5,rep+1,2);
		}else {
			fractal(width,y+5,x1-5,height,rep+1,3);
		}
}