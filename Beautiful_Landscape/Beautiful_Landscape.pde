//man
float manX = 250;
float manY = 650;
float lLeg = manX-20;
float rLeg =  manX+20;
boolean lInFront = false;
boolean rInFront = false;
float lArm = manX - 15;//left arm x coordinate
float rArm = manX +15;//right arm x coordinate

//kid
int kidX = 150;
int kidY = 770;
int kidSize = 50;
float kidArmX = kidX+30;
float kidArmY = kidY +60;
boolean kidArmTop = true;
boolean kidArmLeft = true;

//kids hat
int hatSize = 50;
int hatX = kidX;
int hatY = kidY;

//kite
float kiteX = 1000;
float kiteY = 50;
boolean kiteLeft = true;
boolean kiteTop = false;

//tree
int treeY=580; //y value of trees

//sun
int sunX = 0;
int sunY = 170;

//cloud 1
float cloudX1 = 0;  
float cloudY1 = random(60, 200);
float gray1 = random(200, 255);
float r1 = random(20, 40);
float speed1 = random(0.05, .7);

//cloud 2
float cloudX2 = 1450;
float cloudY2 = random(160, 300);
float gray2 = random(150, 255);
float r2 = random(20, 50);
float speed2 = random(0.05, .7);

//cloud 3
float cloudX3 = 0;
float cloudY3 = random(260, 500);
float gray3 = random(150, 255);
float r3 = random(15, 60);
float speed3 = random(0.05, 1);

void setup() {  
  size(1400, 900);
}


void draw() {


  background(0, 200, 255); //sky blue background

  drawCloud2();//lie 113     contains if and else 
  drawSun();  // line 165
  drawCloud1(); //line 87    contains if and else 
  drawCloud3(); // line 139  contains if and else 
  drawbackground(); // line 239  contains loop and nested loop line 251

  manWalk(); //line 181    contains if and else
  stickman(); //line 226

  kiteMove(); // line 363  contains if and else if
  drawKite(); // line 350  contains quad

  kidArmMove(); //line 322  contains if and else if 
  drawKid(); // line 308
  drawHat();// line 289     contains arc
}


void drawCloud1()
{
  if (cloudX1 >= 1450) {
    cloudX1 = -200;
  } else {
    cloudX1 += speed1;
    ; //cloud moving left to right
  }

  noStroke();
  fill(gray1);
  rect(cloudX1, cloudY1, r1*3, r1/2);
  ellipse(cloudX1, cloudY1, r1, r1);
  ellipse(cloudX1 + r1*(.2), cloudY1 - r1*(.2), r1, r1);
  ellipse(cloudX1 + r1*(.8), cloudY1 - r1*(.6), r1, r1);
  ellipse(cloudX1 + r1*(.8), cloudY1, r1, r1);
  ellipse(cloudX1 + r1*(1.2), cloudY1 - r1*(.4), r1, r1);
  ellipse(cloudX1 + r1*(1.4), cloudY1 - r1*(.6), r1, r1);
  ellipse(cloudX1 + r1*(1.6), cloudY1 - r1*(.4), r1, r1);
  ellipse(cloudX1 + r1*(1.9), cloudY1 - r1*(.8), r1, r1);
  ellipse(cloudX1 + r1*(2), cloudY1 - r1*(.4), r1, r1);
  ellipse(cloudX1 + r1*(2.3), cloudY1 - r1*(.4), r1, r1);
  ellipse(cloudX1 + r1*(2.4), cloudY1 - r1*(.5), r1, r1); 
  ellipse(cloudX1 + r1*(3), cloudY1, r1, r1);
}

void drawCloud2()
{
  if (cloudX2 <= -200) {
    cloudX2 = 1450;
  } else {
    cloudX2 -= speed2 ;
    ; //cloud moving left to right
  }

  noStroke();
  fill(gray2);
  rect(cloudX2, cloudY2, r2*3, r2/2);
  ellipse(cloudX2, cloudY2, r2, r2);
  ellipse(cloudX2 + r2*(.2), cloudY2 - r2*(.2), r2, r2);
  ellipse(cloudX2 + r2*(.8), cloudY2 - r2*(.6), r2, r2);
  ellipse(cloudX2 + r2*(.8), cloudY2, r2, r2);
  ellipse(cloudX2 + r2*(1.2), cloudY2 - r2*(.4), r2, r2);
  ellipse(cloudX2 + r2*(1.4), cloudY2 - r2*(.6), r2, r2);
  ellipse(cloudX2 + r2*(1.6), cloudY2 - r2*(.4), r2, r2);
  ellipse(cloudX2 + r2*(1.9), cloudY2 - r2*(.8), r2, r2);
  ellipse(cloudX2 + r2*(2), cloudY2 - r2*(.4), r2, r2);
  ellipse(cloudX2 + r2*(2.3), cloudY2 - r2*(.4), r2, r2);
  ellipse(cloudX2 + r2*(2.4), cloudY2 - r2*(.5), r2, r2); 
  ellipse(cloudX2 + r2*(3), cloudY2, r2, r2);
}

void drawCloud3()
{
  if (cloudX3 >= 1450) {
    cloudX3 = -200;
  } else {
    cloudX3 += speed3 ;
    ; //cloud moving left to right
  }

  noStroke();
  fill(gray3);
  rect(cloudX3, cloudY3, r3*3, r3/2);
  ellipse(cloudX3, cloudY3, r3, r3);
  ellipse(cloudX3 + r3*(.2), cloudY3 - r3*(.2), r3, r3);
  ellipse(cloudX3 + r3*(.8), cloudY3 - r3*(.6), r3, r3);
  ellipse(cloudX3 + r3*(.8), cloudY3, r3, r3);
  ellipse(cloudX3 + r3*(1.2), cloudY3 - r3*(.4), r3, r3);
  ellipse(cloudX3 + r3*(1.4), cloudY3 - r3*(.6), r3, r3);
  ellipse(cloudX3 + r3*(1.6), cloudY3 - r3*(.4), r3, r3);
  ellipse(cloudX3 + r3*(1.9), cloudY3 - r3*(.8), r3, r3);
  ellipse(cloudX3 + r3*(2), cloudY3 - r3*(.4), r3, r3);
  ellipse(cloudX3 + r3*(2.3), cloudY3 - r3*(.4), r3, r3);
  ellipse(cloudX3 + r3*(2.4), cloudY3 - r3*(.5), r3, r3); 
  ellipse(cloudX3 + r3*(3), cloudY3, r3, r3);
}

void drawSun() {
  fill(255, 255, 0); //sun yellow colour
  strokeWeight(8); //changing sun ray weight
  stroke(255, 255, 0); //sun yellow for rays
  ellipse(0, 0, 300, 300); //sun

  //drawing sun                  //sunrays left to right
  line(sunX, sunY, sunX, sunY+80);//long
  line(sunX+40, sunY-5, sunX+45, sunY+25);//short
  line(sunX+85, sunY-20, sunX+120, sunY+60);//long
  line(sunX+120, sunY-40, sunX+140, sunY-15);//short
  line(sunX+150, sunY-70, sunX+220, sunY-5);//long
  line(sunX+165, sunY-100, sunX+190, sunY-90);//short
  line(sunX+170, sunY-140, sunX+260, sunY-130);//long
}

void manWalk() {
  if (rInFront) { //moving right leg to back
    if (rLeg >= manX-20) {
      rLeg -= .25;
      lArm += 1.14;
    } else 
    rInFront = false;
  }

  if (lInFront) { //moving left leg back
    if (lLeg >= manX-20) {
      lLeg -= .25;
      rArm += 1.145;
    } else 
    lInFront = false;
  }

  if (!rInFront) { //moving right leg to front 
    if (rLeg <= manX+20)
      rLeg += 1.1;

    else
      rInFront = true;
  }

  if (!lInFront) { //moving left leg to front
    if (lLeg <= manX+20)
      lLeg += 1.1;

    else
      lInFront = true;
  }


  if (manX <= 1450) { //making the man walk left to right
    manX += .5;
  } else {
    manX = -50;
    lLeg = manX - 20;
    rLeg = manX +25;
    rArm = manX + 15;
    lArm = manX - 15;
  }
}  

void stickman() {
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
}

void drawbackground() {
  //drawing background
  noStroke();
  for (int h = 305; h< 1400; h += 400)//back hills
  {
    fill(50, 210, 55);
    ellipse(h, 800, 300, 400);
    ellipse(h, 800, 300, 400);
    ellipse(h, 800, 300, 400);
    ellipse(h, 800, 300, 400);
  }

  for (int t=20; t<=1400; t+=100)//trees
  {
    fill(79, 48, 2);
    rect((t*4+5), treeY, 20, 150);
    for (int bY=0; bY<=60; bY+=20)
    {
      noStroke();
      fill(29, 173, 0);
      triangle(t*4-10, treeY+bY, (t*4)+40, treeY+bY, (t*4)+15, treeY-40);
    }
  }

  for (int i = 100; i<1400; i +=400)//front hills
  {
    fill(22, 110, 45);
    ellipse(i, 800, 550, 300);
    ellipse(i, 800, 550, 300);
    ellipse(i, 800, 550, 300);
    ellipse(i, 800, 550, 300);
  }


  fill(230, 160, 55);//sand yellow
  rect(0, 750, width, 60);//back of foothpath

  for (int f=0; f<=1400; f+=50)//footpath
  {
    fill(133, 114, 61);
    rect(f, 760, 25, 10);
    fill(166, 128, 80);
    rect((f*2)-17, 755, 10, 15);
    fill(97, 81, 60);
    rect((f*2)+32, 764, 10, 30);
    fill(94, 71, 36);
    rect(f*2-53, 778, 70, 20);
  }
}

void drawHat() {
  noStroke();
  fill(0, 0, 255); //blue outside stripes
  arc(hatX, hatY, hatSize, hatSize, PI, TWO_PI); // biggest semi- sphere

  fill(255, 0, 0); //red inside stripes
  arc(hatX, hatY, hatSize*.67, hatSize, PI, TWO_PI); //middle semi-sphere

  fill(0, 0, 255); //blue inside stripes
  arc(hatX, hatY, hatSize*.166, hatSize, PI, TWO_PI); //smallest semi-sphere

  stroke(0); //helicopter top of hat
  fill(255);
  ellipse(hatX + hatSize/5.5, hatY - hatSize/2.05, hatSize*.333, hatSize*.07);// right hellicopter wing
  ellipse(hatX - hatSize/5.5, hatY - hatSize/2.05, hatSize*.333, hatSize*.07);// left helicopter wing
  fill(0);
  ellipse(hatX, hatY - hatSize/2.05, hatSize*.1, hatSize*.08); // centre dot of wings
}

void drawKid() {
  fill(255);
  strokeWeight(2);
  ellipse(kidX, kidY, kidSize, kidSize);//kid head
  line(kidX, kidY+ kidSize/2, kidX, kidY+kidSize*2 );//kid torso

  line(kidX, kidY+kidSize*2, kidX+30, kidY+100);//kid right leg
  line(kidX, kidY+kidSize*2, kidX+20, kidY+90);//kid left leg

  line(kidX, kidY+kidSize*1.4, kidArmX, kidArmY);//bottom arm
  line(kidX, kidY+kidSize*1.2, kidArmX, kidArmY);//top arm
}


void kidArmMove() { 


  if (kidArmX <= kidX+10) {
    kidArmLeft = true;
  } else if (kidArmLeft == false) {
    kidArmX -= .25;
  }

  if (kidArmX >= kidX+40) {
    kidArmLeft = false;
  } else if (kidArmLeft == true) {
    kidArmX += .3;
  }

  if (kidArmY <=kidY+40) {
    kidArmTop = true;
  } else if (kidArmTop == false) {
    kidArmY -= .25;
  }

  if (kidArmY >=kidY+70) {
    kidArmTop = false;
  } else if (kidArmTop == true) {
    kidArmY += .2;
  }
}

void drawKite() { 
  fill(255, 0, 0);
  stroke(255);
  strokeWeight(1);
  line(kiteX+35, kiteY+75, kidArmX, kidArmY);//string

  stroke(0);
  quad(kiteX, kiteY+50, kiteX+70, kiteY+50, kiteX+30, kiteY, kiteX+50, kiteY+150);//red kite part
  fill(0, 255, 0);
  quad(kiteX+30, kiteY, kiteX+50, kiteY+150, kiteX+70, kiteY+50, kiteX, kiteY+50);//green kite parts
}


void kiteMove() {   
  if (kiteX <= 800) {
    kiteLeft = true;
  } else if (kiteLeft == false) {
    kiteX -= .5;
  }


  if (kiteX >= 1300) {
    kiteLeft = false;
  } else if (kiteLeft == true) { 
    kiteX += .5;
  }


  if (kiteY <= 30) {
    kiteTop = true;
  } else if (kiteTop == false) {
    kiteY -= .7;
  }

  if (kiteY >= 250) {
    kiteTop = false;
  } else if (kiteTop == true) {
    kiteY += .4;
  }
}
