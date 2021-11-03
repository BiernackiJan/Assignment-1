float kiteX = 1000;
float kiteY = 50;
boolean kiteLeft = true;
boolean kiteTop = false;

void setup()
{
  size(1450, 900);
}


void draw()
{
  background(255);
  kiteMove();
  drawkite();
}

 void drawkite() {
  fill(255, 0, 0);
  line(kiteX+35, kiteY+75, 100, 1000);

  strokeWeight(1);
  quad(kiteX, kiteY+50, kiteX+70, kiteY+50, kiteX+30, kiteY, kiteX+50, kiteY+150);
  fill(0, 255, 0);
  quad(kiteX+30, kiteY, kiteX+50, kiteY+150, kiteX+70, kiteY+50, kiteX, kiteY+50);
}

void kiteMove() {   
  if (kiteX <= 800) {
    kiteLeft = true;
  }
  if (kiteLeft == false) {
    kiteX -= .5;
  }


  if (kiteX >= 1300) {
    kiteLeft = false;
  }
  if (kiteLeft == true) {
    kiteX += .5;
  }

  if (kiteY <= 30) {
    kiteTop = true;
  }
  if (kiteTop == false) {
    kiteY -= .7;
  }

  if (kiteY >= 250) {
    kiteTop = false;
  }
  if (kiteTop == true) {
    kiteY += .4;
  }
}
