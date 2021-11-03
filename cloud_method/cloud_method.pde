//sun
int sunX = 0;
int sunY = 170;

//cloud 1
float cloudX1 = 0;  
float cloudY1 = random(60 ,200);
float gray1 = random(200,255);
float r1 = random(10,60);
float speed1 = random(0.05,.7);

//cloud 2
float cloudX2 = 1450;
float cloudY2 = random(160,300);
float gray2 = random(150,255);
float r2 = random(10,80);
float speed2 = random(0.05,.7);

//cloud 3
float cloudX3 = 0;
float cloudY3 = random(260,500);
float gray3 = random(150,255);
float r3 = random(10,80);
float speed3 = random(0.05,1);



void setup() {  
  size(1400, 900);
}

void draw() {  
  
  background(0, 200, 255); //sky blue background
  
  drawCloud2();
  drawSun();  
  drawCloud1();
  drawCloud3();
}


void drawCloud1()
{
  if (cloudX1 >= 1450) {
    cloudX1 = -200;
  } else {
    cloudX1 += speed1;; //cloud moving left to right
  }
  
  noStroke();
  fill(gray1);
  rect(cloudX1, cloudY1, r1*3, r1/2);
  ellipse(cloudX1, cloudY1, r1, r1);
  ellipse(cloudX1 + r1*(.2), cloudY1 - r1*(.2), r1, r1);
  ellipse(cloudX1 + r1*(.8), cloudY1 - r1*(.6), r1, r1);
  ellipse(cloudX1 + r1*(.8), cloudY1,r1,r1);
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
    cloudX2 -= speed2 ;; //cloud moving left to right
  }
  
  noStroke();
  fill(gray2);
  rect(cloudX2, cloudY2, r2*3, r2/2);
  ellipse(cloudX2, cloudY2, r2, r2);
  ellipse(cloudX2 + r2*(.2), cloudY2 - r2*(.2), r2, r2);
  ellipse(cloudX2 + r2*(.8), cloudY2 - r2*(.6), r2, r2);
  ellipse(cloudX2 + r2*(.8), cloudY2,r2,r2);
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
    cloudX3 += speed3 ;; //cloud moving left to right
  }
  
  noStroke();
  fill(gray3);
  rect(cloudX3, cloudY3, r3*3, r3/2);
  ellipse(cloudX3, cloudY3, r3, r3);
  ellipse(cloudX3 + r3*(.2), cloudY3 - r3*(.2), r3, r3);
  ellipse(cloudX3 + r3*(.8), cloudY3 - r3*(.6), r3, r3);
  ellipse(cloudX3 + r3*(.8), cloudY3,r3,r3);
  ellipse(cloudX3 + r3*(1.2), cloudY3 - r3*(.4), r3, r3);
  ellipse(cloudX3 + r3*(1.4), cloudY3 - r3*(.6), r3, r3);
  ellipse(cloudX3 + r3*(1.6), cloudY3 - r3*(.4), r3, r3);
  ellipse(cloudX3 + r3*(1.9), cloudY3 - r3*(.8), r3, r3);
  ellipse(cloudX3 + r3*(2), cloudY3 - r3*(.4), r3, r3);
  ellipse(cloudX3 + r3*(2.3), cloudY3 - r3*(.4), r3, r3);
  ellipse(cloudX3 + r3*(2.4), cloudY3 - r3*(.5), r3, r3); 
  ellipse(cloudX3 + r3*(3), cloudY3, r3, r3);
}

void drawSun(){
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
