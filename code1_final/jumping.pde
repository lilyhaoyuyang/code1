void jumping(){
  if (y >= -90 && !small)//moveing to the top
      { 
        y = y - 5;
        small = false;
      }
      if (y  < -90)
      { 
        small = true;
      }// the limitation of the top
      if (y  > 40)
      { 
        small = false;// the lilitation of the bottom
        flag = true;
      }
      if (y <= 40 && small)//moving to the bottom
      {
        y = y + 5;
        small = true;
      }
}