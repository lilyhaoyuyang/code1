import ddf.minim.*;
Minim minim;
AudioPlayer player2;
AudioPlayer player3;
float a = 0;// the retate angle
float x = 0;// the location of people
float y = 40;
boolean small = false;// the small jumoing whearth moving to top 
boolean big = false;// the jumping whearth moving to the top
boolean flag = true;// the tittle of jumping 
PImage img1;  // the image of star background 
PImage img2; // the image of earth 
PImage img3;// the image of fule
PImage img4;// the image of people
PImage img5;// the image of stone
PImage img6;// the image of fule2
float []xx;// the location of the fule
float []yy;
float []xx1;// the colaction of the stone
float []yy1;
PVector aa;
PVector bb;
boolean gg = false;// test of lose
boolean ww = false;// test of win
int life = 3;
int score = 0;// showing the score
void setup() {
  size(1000, 707);// the screen size
  textSize(40);// the scale of text 

  xx = new float[500];// the location of the 500 fule
  yy = new float[500];
  xx1 = new float[500];
  yy1 = new float[500];
  img1 = loadImage("1.png");  // load the images 
  img2 = loadImage("2.png"); 
  img3 = loadImage("4.png"); 
  img4 = loadImage("5.png");
  img5 = loadImage("3.png");
  img6 = loadImage("6.png");
  minim = new Minim(this);

  player2 = minim.loadFile("2.wav");
  player3 = minim.loadFile("3.wav");
  
  init();
}
void draw() {

  if (!gg && !ww) {
    a = a + 0.01;//the earth's angle will be change.
    text(255, 255, 255);// the color of the text.
    if (flag) {// small jumping.
      small_jumping();
    }
    if (flag == false) {// jumping
      jumping();
    }
    if (mousePressed)
      flag = false;// the title of the jumping

    image(img1, 0, 0);//the star background
    image(img3, x, y);//the fule 
    text(score, 30, 40);// the score location and grade
    text(life, 930, 40);
    for (int i = 0; i < 499; i++)
    {
      if (xx[i] > -300)
        image(img5, xx[i], yy[i], 70, 70);
    }
    for (int i = 0; i < 499; i++)
    {
      xx[i] = xx[i] - 3;
      aa = new PVector(x+520, y+400);// the location of the people

      bb = new PVector(xx[i]+30, yy[i]+10); //the location of the fule
      if ( PVector.dist(aa, bb) < 60)// if the distance is small than 60, you will get a fule.
      {
        score = score + 10;// you will get 10 credit.
        xx[i] = -300;
      }
      if (score > 50)// you will win when the score more than 300.
        ww = true;
    }
    for (int i = 0; i < 499; i++)
    {
      image(img4, xx1[i], yy1[i], 100, 100);// the stone
    }
    for (int i = 0; i < 499; i++)
    {
      xx1[i] = xx1[i] - 5;
      aa = new PVector(x+520, y+400);// the location of the people

      bb = new PVector(xx1[i]+50, yy1[i]+30); //the location of the stone
      if ( PVector.dist(aa, bb) < 50)//if the distance between people and the stone is too colse, you will die.
      {
        life--;
        y = 10;
        small = true;
        big = false;
        if(life < 1)
        gg =true;// lost.
      }
    }
    //-------------------------------------------------------------------------------
    translate(520, 755);// the erth will be rotation.
    rotate(-a);

    translate(-520, -755);
    image(img2, 0, 400);// the image of moon.
  }
  //------------------------------------------------------------------------------
  if (gg)// testing whether lose the game and notice of lose game.
  {
    lose();
  }
  //-----------------------------------------------------
  if (ww)// testing whether lose the game and notice of lose game.
    win();
}