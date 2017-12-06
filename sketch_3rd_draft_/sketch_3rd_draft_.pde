import processing.video.*;
Movie movie1;
Movie movie2;
float a = 0;
float b = 700;
float c = 900;
float x = 0;
float y = 40;
int or = 0;
int or1 = 0;
int flag = 1;
PImage img1;  
PImage img2; 
PImage img3;
PImage img4;
PImage img5;
float []xx;
float []yy;
float []xx1;
float []yy1;
PVector aa;
PVector bb;
int gg = 0;
int ww = 0;
int score = 0;
void setup() {
  size(1000,707);
  textSize(40);
  movie1 = new Movie(this,"666.mp4");
  movie2 = new Movie(this,"777.mp4");
  xx = new float[500];
  yy = new float[500];
  xx1 = new float[500];
  yy1 = new float[500];
  img1 = loadImage("1.png");  
  img2 = loadImage("2.png"); 
  img3 = loadImage("4.png"); 
  img4 = loadImage("5.png");
  img5 = loadImage("3.png");
  for (int i = 0;i < 499;i++)
  {
    yy[i] = random(250,350);
  }
   for (int i = 0;i < 499;i++)
  {
    xx[i] = 200 * i;
  }
   for (int i = 0;i < 499;i++)
  {
    yy1[i] = random(100,320);
  }
   for (int i = 0;i < 499;i++)
  {
    xx1[i] = 400 * i;
  }
}
void movieEvent(Movie m) {
  m.read();
}
void draw() {
  //background(0);
  //image(movie1, 0, 0, width, height);
  if(gg == 0 && ww == 0){
  a = a + 0.01;
  b = b - 2;
  c = c - 2;
    text(255,255,255);
    if(flag == 1){
  if(y >= 30 && or == 0)
 { y = y - 0.8;
  or = 0;}
   if(y  < 30)
 { 
  or = 1;}
   if(y  > 40)
 { 
  or = 0;}
   if(y <= 40 && or == 1 )
  {
    y = y + 0.8;
  or = 1;
  }
    }
    if(flag == 2){
    if(y >= -90 && or == 0)
 { y = y - 5;
  or = 0;}
   if(y  < -90)
 { 
  or = 1;}
   if(y  > 40)
 { 
  or = 0;
  flag = 1;
}
   if(y <= 40 && or == 1 )
  {
    y = y + 5;
  or = 1;
  }
    }
  if(mousePressed)
  flag = 2;
  
  
  
  image(img1, 0, 0);
  image(img3, x, y);
 // image(img4, b, 40,180,180);
 // image(img5, c, 80,100,100);
 text(score ,30,40);
   for (int i = 0;i < 499;i++)
  {
    if(xx[i] > -300)
    image(img5, xx[i], yy[i],70,70);
  }
    for (int i = 0;i < 499;i++)
  {
    xx[i] = xx[i] - 3;
     aa = new PVector(x+520,y+400);
   // ellipse(x+520,y+400,30,30);
    //ellipse(xx[i]+30, yy[i]+10,30,30);
     bb = new PVector(xx[i]+30, yy[i]+10); 
    if( PVector.dist(aa,bb) < 60)
    {score = score + 10;
    xx[i] = -300;}
   if(score > 300)
   ww = 1;   
  }
    for (int i = 0;i < 499;i++)
  {
    image(img4, xx1[i], yy1[i],100,100);
  }
    for (int i = 0;i < 499;i++)
  {
    xx1[i] = xx1[i] - 5;
     aa = new PVector(x+520,y+400);
     //ellipse(xx1[i]+50, yy1[i]+30,30,30);
     bb = new PVector(xx1[i]+50, yy1[i]+30); 
    if( PVector.dist(aa,bb) < 50)
    {gg =1;
     }
  }
 // text(mouseX ,mouseX,mouseY-300);
 // text(mouseY,mouseX+30,mouseY-300);
 // translate(mouseX,mouseY+200);
 translate(520,755);
  rotate(-a);
  //translate(-mouseX,-(mouseY+200));
  translate(-520,-755);
  image(img2, 0, 400);
   
  }
  if(gg == 1)
  {
  play1();}
    if(ww == 1)
  play2();
}
void play1()
{
image(movie1, 0, 0, width, height);
}
void play2()
{
image(movie2, 0, 0, width, height);
}