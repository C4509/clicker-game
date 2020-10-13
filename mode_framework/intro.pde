//intro screen
void intro(){
  music.play();
  music.loop();
  background(255,148,15);
  strokeWeight(1);
  fill(255);
tactileRect(300,500,500,600,red,lightblu,green,white);
rect(300,500,200,100);
fill(0);

textSize(80);
textFont(arial);
text("Ball Clicker",395,200);
textSize(65);
textFill(300,500,500,600,green,0);
text("Start",395,540);
fill(255);
tactileRect(250,650,550,750,red,lightblu,green,white);
rect(250,650,300,100);
textFill(250,650,550,750,green,0);
   
text("Options",395,690);
}
void introClicks(){
  fill(255);
if (mouseX>300&&mouseX<500&&mouseY>500&&mouseY<600){
reset();
mode = game;}
else if (
mouseX>250&&mouseX<550&&mouseY>650&&mouseY<750){
mode = options;}
}
