int treeY=580;
int r=30;
size(1400,900);
background(0,200,255);

for(int lX=60; lX<=1400; lX+= 100)
  {
    fill(90,40,2);
      rect((lX*4)+40,treeY,30,150);
      for(int i=0;i<=50;i+=10)
      {
        ellipse(50+i,100-i/2,r,r);
        ellipse(100+i,50+i,r,r);
        ellipse(150-i,100+i,r,r);
        ellipse(100-i,150-i,r,r);
  }
  }
