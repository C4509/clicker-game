void options(){
 background(255,148,15);
 textSize(50);
 text("Choose Your Ball",400,75);
 strokeWeight(10);
  stroke(green);
  fill(purple);
  circle(200,200,d2);
  stroke(lightblue);
  fill(orange);
  circle(400,200,d3);
  stroke(222,92,192);
  fill(45,43,224);
  circle(600,200,d4);
  if (dist(mouseX,mouseY,200,200)<50){
  d2=80;
} else {
  d2=100;}
  if (dist(mouseX,mouseY,400,200)<50){
  d3=80;
} else {
  d3=100;}
  if (dist(mouseX,mouseY,600,200)<50){
  d4=80;
} else {
  d4=100;}
  stroke(targetstroke);
  fill(targetcolour);
circle(500,570,d1);
strokeWeight(3);
stroke(0);
fill(255);
line(270,425,270,625);
circle(270,sliderY,50);
if (mousePressed&&mouseX > 580 && mouseX < 680 && mouseY > 650 && mouseY < 710){
  fill(66,144,250);}
  else {
    fill(255);}
rect(580,650,100,60,10);
textSize(50);
fill(0);
text("OK",625,670);
  }
  void controlslider(){
     if (mouseX > 270 && mouseX < 320 && mouseY > 425 && mouseY < 625){
      sliderY= mouseY;}
      
      d1=map(sliderY,425,625,50,200);
    d1=map(sliderY,625,425,200,50);}

void optionsClicks(){
    if (dist(mouseX,mouseY,200,200)<50){
      targetcolour=purple;
      targetstroke=green;}
      else if (dist(mouseX,mouseY,400,200)<50){
  targetcolour=orange;
  targetstroke=lightblue;}
  else if (dist(mouseX,mouseY,600,200)<50){
    targetcolour=blue;
    targetstroke=pink;}
    if (mouseX > 580 && mouseX < 680 && mouseY > 650 && mouseY < 710){
      mode=intro;}
}
