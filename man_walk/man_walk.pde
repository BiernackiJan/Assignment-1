float manX = 250;
float manY = 600;
float lLeg = manX-20;
float rLeg =  manX+20;
boolean lInFront = false;
boolean rInFront = false;
float lArm = manX - 15;
float rArm = manX +15;

void setup(){
  size(1400,900);
}

void draw(){
  stroke(0);
  strokeWeight(2);
  //drawing the stickman
  
  if(rInFront){
    if (rLeg >= manX-20){
       rLeg -= .25;
       lArm += 1.14;}
         
    else 
       rInFront = false;
  }
  
  if(lInFront){
    if (lLeg >= manX-20){
       lLeg -= .25;
       rArm += 1.145;}
         
    else 
       lInFront = false;
  }  
  
  if(!rInFront){
    if(rLeg <= manX+20){
       rLeg += 1.1;
     }
    else
       rInFront = true;
  }
  
  if(!lInFront){
    if(lLeg <= manX+20){
       lLeg += 1.1;
     }
    else
       lInFront = true;
   }
 
  
  if(manX <= 1450){
    manX += .5;
  }
  else{
    manX = -50;
    lLeg = manX - 20;
    rLeg = manX + 25;
    rArm = manX + 15;
    lArm = manX - 15;
  }     
   background(0,200,255);
    
  ellipse(manX,manY,50,50);//head
  line(manX,manY+25,manX,manY+100);//torso
  
  line(manX,manY+35, rArm,manY+75);//right arm
  
  line(manX,manY+35, lArm, manY+75);//left arm
  
  strokeWeight(3);
  line(manX,manY+100,lLeg,manY+130);//left leg
  stroke(255,180,0);
  line(manX,manY+100,rLeg,manY+130);//right leg
  

}
