//pause screen  
  void pause(){
    music.pause();
    fill(255);
    rect(73,55,65,65);
    text("pause",400,400);
    fill(0);
    triangle(95,67,120,85,95,110);

}
  void pauseClicks(){
  if(mouseX > 73 && mouseX < 138 && mouseY > 55 && mouseY < 120){  
  mode = game;}}
