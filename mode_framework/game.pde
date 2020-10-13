//game screen
void game(){
  music.play();
background(183,85,105);
strokeWeight(10);
stroke(targetstroke); 
fill(targetcolour);
//target
circle(x,y,d1);
strokeWeight(1);
x=x+vx;
y=y+vy;
//get target to bounce
if(x < 50 || x > width-50){
  vx = vx * -1;
 }
  if(y < 50 || y > height-50){
  vy = vy * -1;
 }
    fill(0);
    //count score and lives
  text("Score:"+score,200,150);
  text("lives:"+lives,200,250);
  fill(255);
  //pause button
  rect(73,55,65,65);
fill(0);
stroke(0);
rect(90,65,10,40);
rect(110,65,10,40);}

void gameClicks(){
  //initialize point scored
  if(dist(mouseX,mouseY,x,y)<d1/2+10){
    coin.rewind();
    coin.play();
    score = score+ 1;
  vx=vx * 1.1;
   vy=vy*1.1;}
   //initialize ball missed
   else if(mouseX > 73 && mouseX < 138 && mouseY > 55 && mouseY < 120){
     mode = pause;}
    else{
       bump.rewind();
   bump.play();
      lives=lives-1;} 
   //initialize gameover
   if(lives==0){
     gameOver.rewind();
     mode=gameover;}
   
   
}
