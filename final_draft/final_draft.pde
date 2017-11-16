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
void setup() {
  size(1000,707);
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
    yy[i] = random(100,350);
  }
   for (int i = 0;i < 499;i++)
  {
    xx[i] = 200 * i;
  }
   for (int i = 0;i < 499;i++)
  {
    yy1[i] = random(100,350);
  }
   for (int i = 0;i < 499;i++)
  {
    xx1[i] = 400 * i;
  }
}

void draw() {
  a = a + 0.01;
  b = b - 2;
  c = c - 2;
    text(255,255,255);
    if(flag == 1){
  if(y >= 30 && or == 0)
 { y = y - 0.5;
  or = 0;}
   if(y  == 30)
 { 
  or = 1;}
   if(y  == 40)
 { 
  or = 0;}
   if(y <= 40 && or == 1 )
  {
    y = y + 0.5;
  or = 1;
  }
    }
    if(flag == 2){
     if(y >= 0 && or1 == 0)
 { y = y - 0.5;
  or1 = 0;}
   if(y  == 0)
 { 
  or1 = 1;}
   if(y  == 40)
 { 
  or1 = 0;}
   if(y <= 40 && or == 1 )
  {
    y = y + 0.5;
  or1 = 1;
  }  
    }
  if(mousePressed)
  flag = 2;
  
  
  
  image(img1, 0, 0);
  image(img3, x, y);
 // image(img4, b, 40,180,180);
 // image(img5, c, 80,100,100);
   for (int i = 0;i < 499;i++)
  {
    image(img5, xx[i], yy[i],70,70);
  }
    for (int i = 0;i < 499;i++)
  {
    xx[i] = xx[i] - 3;
  }
    for (int i = 0;i < 499;i++)
  {
    image(img4, xx1[i], yy1[i],100,100);
  }
    for (int i = 0;i < 499;i++)
  {
    xx1[i] = xx1[i] - 5;
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