int hatSize = 80;
int hatX = 100;
int hatY = 100;
int kidX = 600;
int kidY = 300;
int kidSize = 50;
void setup(){
  size(1400,900);
}

void draw(){
  background(255);
  
  strokeWeight(2);
  ellipse(kidX,kidY,kidSize, kidSize);
  line(kidX,kidY+ kidSize/2,kidX, kidY+kidSize*2 );

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
