void small_jumping(){
   if (y >= 30 && !small)//move to the top
      { 
        y = y - 0.8;
        small = false;
      }
      if (y  < 30)// the limitaion of moveing to top
      { 
        small = true;
      }
      if (y  > 40)// the limitaion of moveing to bottom
      { 
        small = false;
      }
      if (y <= 40 && small )// moving to the bottom
      {
        y = y + 0.8;
        small = true;
      }
}