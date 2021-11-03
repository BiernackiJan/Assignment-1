for(int t=20;t<=1400;t+=100)
  {
   fill(79, 48, 2);
    rect((t*4+5),treeY,20,150);
    for(int bY=0; bY<=60; bY+=20)
    {
      noStroke();
      fill(29, 173, 0);
      triangle(t*4-10,treeY+bY,(t*4)+40,treeY+bY,(t*4)+15,treeY-40);
    }
  }
  
