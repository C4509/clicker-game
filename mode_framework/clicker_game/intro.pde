//intro screen
void intro(){
    gameOver.pause();
  music.play();
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
tactileRect(600,700,730,765,red,lightblu,green,white);
rect(600,700,130,65);
textSize(50);
textFill(600,700,730,765,green,0);   
text("Exit",665,720);

}
void introClicks(){
  fill(255);
if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600){
reset();
mode = game;}
else if (
mouseX > 250 && mouseX < 550 && mouseY > 650 && mouseY < 750){
mode = options;}
else if(mouseX > 600 && mouseX < 730 && mouseY > 700 && mouseY < 765){
  mode = confirmquit;
}
}  
