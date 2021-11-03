void setup(){  
  size(1400,900);
  noStroke();
}
float cloudX = 0;  
float cloudY = 100;
  
void draw(){  
  if(cloudX >= 1450){
    cloudX = -200; }
  else {
    cloudX = cloudX + 0.2;
  }
  
  background(0,200,255); //sky blue background
  
  //drawing the cloud bellow
  rect(cloudX, cloudY, 150,25);
  ellipse(cloudX,cloudY,50,50);
  ellipse(cloudX + 20, cloudY -10,50,50);
  ellipse(cloudX +150, cloudY, 50,50);
  ellipse(cloudX + 40,cloudY - 30,50,50);
  ellipse(cloudX + 60,cloudY - 20,50,50);
  ellipse(cloudX + 60,cloudY - 20,50,50);
  ellipse(cloudX + 80,cloudY - 20,50,50);
  ellipse(cloudX + 100,cloudY - 20,50,50);
  ellipse(cloudX + 120,cloudY - 20,50,50);
  ellipse(cloudX + 125,cloudY - 25,50,50);
  ellipse(cloudX + 115,cloudY - 35,50,50);
  ellipse(cloudX + 95,cloudY - 40,50,50);
  ellipse(cloudX + 70,cloudY - 30,50,50);

}
