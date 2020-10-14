//mouse functions
void mouseReleased() {
  if (mode==intro) {
    introClicks();
  } else if (mode==options) {
    optionsClicks();
  } else if (mode==game) {
    gameClicks();
  } else if (mode==pause) {
    pauseClicks();
  } else if (mode==gameover) { 
    gameOverClicks();
  } else if (mode==confirmquit) { 
    confirmClicks();
}
}
void mouseDragged() {
  if (mode == options) {
    controlslider();
  }
}
