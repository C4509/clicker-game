//game over screen
void gameover(){
background(255,0,0);
music.pause();
  gameOver.play();
//initialize highsccore                          
  if (highscore < score){
  highscore = score;}
textSize(100);
text("Game Over",400,250);//game over text
tactileRect(250,480,500,545,lightblue,orange,blue,white);
rect(250,480,300,65);//button to play game again
tactileRect(150,575,550,640,lightblue,orange,blue,white);
rect(150,575,500,65);//button to teturn to start screen
textSize(50);
fill(0);
textFill(250,480,500,545,blue,0);
text("Play Again",400,500);//text for button to play again
textFill(150,575,550,640,blue,0);
text("Back To Start Screen",400,600);//text for button to return to start screen
fill(0);
textSize(75);
text("Highscore:"+highscore,400,700);//highscore
}
void gameOverClicks(){
   if (mouseX > 250 && mouseX < 550 && mouseY > 480 && mouseY < 545){
   reset();
   mode=game;
   music.rewind();
 }
    else if(mouseX > 150 && mouseX < 650 && mouseY > 575 && mouseY < 640){
    mode=intro;
    music.rewind();
}
}
