//general use functions
//tactile rectangle function 1
 void tactileRect(int x, int y, int x2, int y2, int f, int f2, int s,int s2){
  if (mouseX > x && mouseX < x2 && mouseY > y && mouseY < y2){
    strokeWeight(5);
    fill(f);
    stroke(s);}
    else {
    strokeWeight(1);
    fill(f2);
    stroke(s2);
  } }
//tactile rectangle function 2
void tactileRect2(int x, int y, int x2, int y2){
if (mouseX > x && mouseX < x2 && mouseY > y && mouseY < y2){
  fill(255);}
  else {
  fill(0);
} }
//function to make text inside rectangles tactile
  void textFill(int x, int y, int x2,int y2, int f, int f2){
  if (mouseX > x && mouseX < x2 && mouseY > y && mouseY < y2){
  fill(f);
} else { 
  fill(f2);
}}
//reset function        
void reset(){
   score=0;
   lives = 3;
   vx=random(-5,5);
   vy=random(-5,5);}
