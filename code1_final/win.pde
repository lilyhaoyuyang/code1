void win() {
    
    image(img1, 0, 0);
    text("You win!", 400, 250);  // text of win notice
    y-=4;
    image(img6, x, y+70);//the fule
   
    //player3.rewind();
    player3.play();
  }