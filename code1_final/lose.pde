void lose() {
  background(0);
  text("You lost!", 400, 250);  // text of lose notice
  if (mousePressed)
  {
    gg = false;
    
  }
  init();
  x = 0;
  y = 40;
  small = false; 
  big = false;
  flag = true;
  score = 0;
  
  //player2.rewind();
  player2.play();
}