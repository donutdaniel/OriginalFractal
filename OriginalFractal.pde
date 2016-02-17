public void setup(){
	size(1000,1000);
	background(255);
	noLoop();
}

public void draw(){
	background(255);
	fractal(0,0,0,height,0,0,5);
	fractal(0,0,0,height,0,1,5);
	fractal(0,0,width,0,0,2,5);
	fractal(0,0,width,0,0,3,5);
}

public void mouseDragged(){
	background(255);
	fractal(0,0,0,height,0,0,mouseX/2);
	fractal(0,0,0,height,0,1,mouseX/2);
	fractal(0,0,width,0,0,2,mouseX/2);
	fractal(0,0,width,0,0,3,mouseX/2);
}

public void fractal(int x, int y, int x1, int y1, int rep, int poo, int plus){
	if(rep>=height/2){
	}
	line(x, y, x1, y1);
		if(poo==0){
			fractal(0,y+plus,x1+plus,height, rep+1,0,plus);
		} else if(poo==1){
			fractal(x+plus,height,width,y1-plus, rep+1,1,plus);
		} else if(poo==2){
			fractal(x+plus,0,width,y1+plus,rep+1,2,plus);
		} else if(poo==3){
			fractal(width,y+plus,x1-plus,height,rep+1,3,plus);
		}
}