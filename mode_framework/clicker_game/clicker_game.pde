import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Cierra Cheung
//Oct.6, 2020
//Block 1-1B
//music credit: 
//https://www.fesliyanstudios.com/royalty-free-music/downloads-c/8-bit-music/6 
//"8 Bit Retro Funk"
PFont arial;
int mode;
final int intro = 0;
final int options = 1;
final int game =  2;
final int pause = 3;
final int gameover = 4;
final int confirmquit = 5;
int sliderY;
float x,y,d1,d2,d3,d4,d5;
float vx,vy;
int score,lives;
int highscore;
color targetcolour;
color targetstroke;
color purple = #B15ACB;
color green = #24AF05;
color lightblue=#0CF7F5;
color orange=#FF940F;
color pink = #F585DD;
color blue = #420CF7;
color white = #FFFFFF;
color red = #FF0000;
color lightblu = #0FC9FF;
Minim minim;
AudioPlayer coin;
AudioPlayer bump;
AudioPlayer music;
AudioPlayer gameOver;



void setup() {
  size(800, 800);
  mode = intro;
  textAlign(CENTER,CENTER);
  x=width/2;
  y=height/2;
  d1=50;
  d2=100;
  d3=100; 
  d4=100;
  sliderY=425;
  targetstroke=green;
  targetcolour=purple;
  vx=random(-5,5);
  vy=random(-5,5);
  highscore=0;
  minim = new Minim(this);
  bump=minim.loadFile("smb_bump.wav");//life lost sound effect
  coin=minim.loadFile("coin.wav");//sound effect for point scored
  gameOver=minim.loadFile("gameover.wav");//game over sound effect
  music=minim.loadFile("funk.mp3");//game theme music
  arial=createFont("arial.ttf",80);
}
void draw() {
  if (mode==intro) {
    intro();
  } else if (mode==options)  {
    options();}
    else if (mode==game) {
    game();
  } else if (mode==pause) {
    pause();
  } else if (mode==gameover) {
    gameover();
  } else if (mode==confirmquit) {
    confirmquit();
  }
  else{println("Error: Mode = " + mode);}
}
