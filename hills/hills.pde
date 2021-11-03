float manX = 250;
float manY = 650;
float lLeg = manX-20;
float rLeg =  manX+20;
float lArm = manX - 15;
float rArm = manX +15;

size(1400,900);
background(255);

noStroke();

for (int h = 305; h< 1400; h += 400)//back hills
  {
  fill(50,210,55);
  ellipse(h,800,300,400);
  ellipse(h,800,300,400);
  ellipse(h,800,300,400);
  ellipse(h,800,300,400);
  }
  
for (int i = 100; i<1400; i +=400)//front hills
  {
  fill(22,110,45);
  ellipse(i,800,550,300);
  ellipse(i,800,550,300);
  ellipse(i,800,550,300);
  ellipse(i,800,550,300);
  }


fill(230, 160, 55);//sand yellow
rect(0,750, width, 60);//back of foothpath

for(int f=0;f<=1400;f+=50)//footpath
{
  fill(133, 114, 61);
  rect(f,760,25,10);
  fill(166, 128, 80);
  rect((f*2)-17,755,10,15);
  fill(97, 81, 60);
  rect((f*2)+32,764,10,30);
  fill(94, 71, 36);
  rect(f*2-53,778,70,20);
}

//drawing the stickman
  stroke(0); //making the legs black
  strokeWeight(3);
  fill(255);
  ellipse(manX, manY, 50, 50);//head
  line(manX, manY+25, manX, manY+100);//torso
  line(manX, manY+35, rArm, manY+75);//right arm
  line(manX, manY+35, lArm, manY+75);//left arm
  line(manX, manY+100, lLeg, manY+130);//left leg
  line(manX, manY+100, rLeg, manY+130);//right leg
  
