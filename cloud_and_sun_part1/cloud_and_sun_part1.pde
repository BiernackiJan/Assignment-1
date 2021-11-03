float cloudX = 0;  
float cloudY = 100;
int sunX = 0;
int sunY = 170;

void setup(){  
  size(1400,900);
}


void draw(){  
  
  if(cloudX >= 1450){
    cloudX = -200; }
  
  else {
    cloudX = cloudX + 0.2;
  }
  
  background(0,200,255); //sky blue background
  
  fill(255,255,0); //sun yellow colour
  ellipse(0,0,300,300); //sun
  
  strokeWeight(8);
  stroke(255,255,0);
  line(sunX,sunY,sunX,sunY+80);//long
  line(sunX+40,sunY-5,sunX+45, sunY+25);//short
  line(sunX+85, sunY-20, sunX+120 , sunY+60);//long
  line(sunX+120, sunY-40, sunX+140, sunY-15);//short
  line(sunX+150, sunY-70, sunX+220, sunY-5);//long
  line(sunX+165, sunY-100, sunX+190, sunY-90);//short
  line(sunX+170, sunY-140, sunX+260, sunY-130);//long 
  
 
  fill(255); //fills cloud with white
  noStroke(); //removes stroke for cloud
  
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
