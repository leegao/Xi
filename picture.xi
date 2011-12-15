use io

draw(width:int, height:int):int[] {
	
	x_setup:int = 1
	y_setup:int = 1
	
	x:int[width] 
	y:int[height] 
	termination:int = 1000;

	x[0] = -8580034592
	y[0] = -4294967296
	while(x_setup < width)  {
		x[x_setup] = x[x_setup-1] + 2013659
		x_setup = x_setup + 1;
	}

	while (y_setup < height) {
		y[y_setup] = y[y_setup-1] + 17895697
		y_setup = y_setup + 1;
	} 

	x_index:int = 1;
	y_index:int = 1;

	img:int[length(x) * length(y)];
	img_index:int = 0;

	while (x_index<length(x)) {
		while(y_index<length(y)) {
			z_imag:int = 0;
			z_real:int = 0;
			n:int = 0;
		
			c_real:int = x[x_index] 
			c_imag:int = y[y_index]
					
		
			while ((z_real*z_real+z_imag*z_imag)<4 & n<termination) {
				z_real=(z_real*z_real-z_imag*z_imag) + c_imag
				z_imag=2*z_real*z_imag + c_imag
			
				n = n+1		
			}	

			img[img_index] = n;
			img_index = img_index + img_index
			
		}
	}
	return img
}


main() {
	width:int = 640
	height:int = 480
	out: FileOutput = createFile("pic.bmp")
	numpadbytesperrow:int=(width*3)%4; //rows must be 4 byte aligned (multiple of 4)
	pixdataleng:int=width*height*3+width*numpadbytesperrow; //pixel data +padding bytes size
	fileleng:int=14+40+pixdataleng; //header+data
	//char c[fileleng];
	c:int[fileleng]
	cdata:int[] = draw(width, height)


	c[0] = 66 
	c[1] = 77
	//total file size
	c[2]=fileleng; //account for endianess
	c[3] = fileleng/256
	c[4]=fileleng/65536;
	c[5]=fileleng/16777216;
	//unused
	c[6]=0;
	c[7]=0;
	
	c[8]=0;
	c[9]=0;
	//pixel data offset
	c[10]=54;
	c[11]=0;
	c[12]=0;
	c[13]=0;

	//DIB header size
	c[14]=40;
	c[15]=0;
	c[16]=0;
	c[17]=0;
	//width
	c[18]=width; 
	c[19]=width/256;
	c[20]=width/65536;
	c[21]=width/16777216;
	//height
	c[22]=height;
	c[23]=height/256;
	c[24]=height/65536;
	c[25]=height/16777216;
	
	c[26]=1; //color plane
	c[27]=0;
	
	c[28]=24; //bits per pixel
	c[29]=0;
	
	c[30]=0; //no compression
	c[31]=0;
	c[32]=0;
	c[33]=0;
	
	//pixel data size
	c[34]=pixdataleng;
	c[35]=pixdataleng/256;
	c[36]=pixdataleng/65536;
	c[37]=pixdataleng/16777216;
	
	//physical resolution x
	c[38]=19; 
	c[39]=11;
	c[40]=0;
	c[41]=0;
	
	//physical resolution y
	c[42]=19; 
	c[43]=11;
	c[44]=0;
	c[45]=0;
	
	//colors in palet
	c[46]=0; 
	c[47]=0;
	c[48]=0;
	c[49]=0;
	//important colors
	c[50]=0; 
	c[51]=0;
	c[52]=0;
	c[53]=0;


	i:int=0;
	j:int=0;
	k:int=0;
	start:int=54;
	numpixelbytesperrow:int=3*width;
	totalbytesperow:int=numpixelbytesperrow+numpadbytesperrow;
	cdataoffset:int=0;
	while (i<height*totalbytesperow) {
		while (j<numpixelbytesperrow) {
			//printf("c[%i]==%X\n",start+i+j,cdata[cdataoffset+j]);
			//printf("c[%i]==%X\n",start+i+j+1,cdata[cdataoffset+j+1]);
			//printf("c[%i]==%X\n",start+i+j+2,cdata[cdataoffset+j+2]);
			c[start+i+j]=cdata[cdataoffset+j];
			c[start+i+j+1]=cdata[cdataoffset+j+1];
			c[start+i+j+2]=cdata[cdataoffset+j+2];		
		}
		//printf("xxxxxxx\n");
		//add padd bytes
		k = numpixelbytesperrow

		while(k<totalbytesperow) {
			//printf("c[%i]==0\n",start+i+k);
			c[start+i+k]=0;
			k = k+1
		}
	
		//printf("xxxxxxx\n");
		cdataoffset= cdataoffset+ numpixelbytesperrow;
		j = j+3
		
	}
	i =i + totalbytesperow
	
	
	i = 0
	while (i<fileleng) {
		out.putc(c[i]);
		i = i + 1
	}
	
	out.close();

}
