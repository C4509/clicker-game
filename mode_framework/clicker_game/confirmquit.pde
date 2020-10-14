//confirm to quit
void confirmquit(){
  fill(255);
  stroke(0);
  rect(200,300,400,300);
  strokeWeight(10);
  stroke(green);
  fill(0);
text("Do you really", 400,325);
text("want to quit?", 400,375);
tactileRect2(280,500,380,550);
//quit button
rect(280,500,100,50);
tactileRect2(400,500,500,550);
//cancel button
rect(400,500,120,50);
fill(255);
//confirm to quit screen
textSize(35);
textFill(280,500,380,550,0,255);
text("Quit",320,520);
textFill(400,500,500,550,0,255);
text("Cancel",460,520);
fill(lightblu);
stroke(white);
strokeWeight(1);
rect(600,700,130,65);
fill(0);
textSize(50);
text("Exit",665,720);}

void confirmClicks(){
  //initialize quit
  if (mouseX > 280 && mouseX < 380 && mouseY > 500 && mouseY < 550){
    exit();
    //initialize cancel
  } else if (mouseX > 400 && mouseX < 500 && mouseY > 500 && mouseY < 550){
    mode=intro;
  }
}
