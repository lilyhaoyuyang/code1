void init() {
  for (int i = 0; i < 499; i++)
  {
    yy[i] = random(250, 350);//the location y of fule
  }
  for (int i = 0; i < 499; i++)
  {
    xx[i] = 200 * i;//the location x of fule.
  }
  for (int i = 0; i < 499; i++)
  {
    yy1[i] = random(100, 320);// the location y of stone
  }
  for (int i = 0; i < 499; i++)
  {
    xx1[i] = 400 * i;// the location x of stone
  }
}