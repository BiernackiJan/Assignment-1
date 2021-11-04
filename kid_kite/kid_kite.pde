int hatSize = 50;
int kidX = 150;
int kidY = 700;
int hatX = kidX;
int hatY = kidY;
int kidSize = 50;
float kidArmX = kidX+30;
float kidArmY = kidY +60;
boolean kidArmTop = true;
boolean kidArmLeft = true;
float kiteX = 1000;
float kiteY = 50;
boolean kiteLeft = true;
boolean kiteTop = false;

void setup(){
  size(1400,900);
}

void draw(){
  background(255);
  
  kidArmMove();
  drawKid();
  drawHat();
  kiteMove();
  drawkite();
}

void drawHat(){
noStroke();
fill(0,0,255); //blue outside stripes
arc(hatX,hatY,hatSize,hatSize,PI,TWO_PI);

fill(255,0,0); //red inside stripes
arc(hatX,hatY,hatSize*.67,hatSize,PI,TWO_PI);

fill(0,0,255); //blue inside stripes
arc(hatX,hatY,hatSize*.166,hatSize,PI,TWO_PI);

stroke(0); //helicopter top of hat
fill(255);
ellipse(hatX + hatSize/5.5,hatY - hatSize/2.05,hatSize*.333,hatSize*.07);
ellipse(hatX - hatSize/5.5,hatY - hatSize/2.05,hatSize*.333,hatSize*.07);
fill(0);
ellipse(hatX,hatY - hatSize/2.05,hatSize*.1,hatSize*.08);
}

void drawKid(){
  fill(255);
  strokeWeight(2);
  ellipse(kidX,kidY,kidSize, kidSize);//kid head
  line(kidX,kidY+ kidSize/2,kidX, kidY+kidSize*2 );//kid torso

  line(kidX,kidY+kidSize*2, kidX+30, kidY+100);//kid right leg
  line(kidX,kidY+kidSize*2, kidX+20, kidY+90);//kid left leg
  
  line(kidX,kidY+kidSize*1.4, kidArmX, kidArmY);//bottom arm
  line(kidX, kidY+kidSize*1.2,kidArmX,kidArmY);//top arm
}


void kidArmMove(){ //making the arms move
  
  
  if(kidArmX <= kidX+10) {
    kidArmLeft = true;
  }
  else if(kidArmLeft == false){
    kidArmX -= .25;
  }
  
   if(kidArmX >= kidX+40){
    kidArmLeft = false;
  }
  else if(kidArmLeft == true){
    kidArmX += .3;
  }
  
  if(kidArmY <=kidY+40){
    kidArmTop = true;
  }
  else if(kidArmTop == false){
    kidArmY -= .25;
  }
  
  if(kidArmY >=kidY+70){
    kidArmTop = false;
  }
  else if(kidArmTop == true){
    kidArmY += .2;
  }  
}

void drawkite() { //creating the kite
  fill(255, 0, 0);
  line(kiteX+35, kiteY+75, kidArmX, kidArmY);//string

  strokeWeight(1);
  quad(kiteX, kiteY+50, kiteX+70, kiteY+50, kiteX+30, kiteY, kiteX+50, kiteY+150);//red kite part
  fill(0, 255, 0);
  quad(kiteX+30, kiteY, kiteX+50, kiteY+150, kiteX+70, kiteY+50, kiteX, kiteY+50);//green kite parts
}


void kiteMove() {   
  
  if(kiteX <= 800) {
    kiteLeft = true;
  }
  else if (kiteLeft == false) {
    kiteX -= .5;
  }


  if(kiteX >= 1300) {
    kiteLeft = false;
  }
  else if(kiteLeft == true) {
    kiteX += .5;
  }

  
  if (kiteY <= 30) {
    kiteTop = true;
  }
  else if (kiteTop == false) {
    kiteY -= .7;
  }

  if (kiteY >= 250) {
    kiteTop = false;
  }
  else if(kiteTop == true) {
    kiteY += .4;
  }
}
