 void tactileRect(int x, int y, int x2, int y2, int f, int f2, int s,int s2){
  if(mouseX > x && mouseX < x2 && mouseY > y && mouseY < y2){
    strokeWeight(5);
    fill(f);
    stroke(s);}
  else{
  strokeWeight(1);
  fill(f2);
  stroke(s2);
} }
void textFill(int x, int y, int x2,int y2, int f, int f2){
if (mouseX > x && mouseX < x2 && mouseY > y && mouseY < y2){
fill(f);}
else{ 
  fill(f2);}}
void reset(){
      score=0;
   lives = 3;
     vx=random(-5,5);
  vy=random(-5,5);}
