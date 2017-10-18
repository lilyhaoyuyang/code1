PImage img1;
PImage img;
int pointillize = 16;
int tt = 0, k=0, number = 0;
int[] d;
float[][] d1;
Boolean click = false;
//-----------------------------------
int numE = 100; 
int eSize[]= new int[numE]; 
int[] eSpeedX = new int[numE];
int[] eSpeedY = new int[numE]; 
int[] ePosX = new int [numE]; 
int[] ePosY = new int [numE]; 
color[] baseColor = new int[numE];
int a  = 1;
int aa = 0;
int x1;
int y1;
int x2;
int y2;
float Color;
int size = 50;
boolean buttonClicked;
int i;
int j;
float dist;
boolean buttonPressed;
import ddf.minim.*;
Minim minim;
AudioPlayer player;
int now = 0;
int dd = 0;
void setup() {
  size(800, 800);
  d = new int[150];
  d1 = new float[10][10];
  while (k < 150) {
    d[k] = k*90;
    k++;
  }
  for (int i = 0; i<numE; i++) {
    ePosX[i] = int(random(0, width)); 
    ePosY[i] = int(random(0, height)); 

    eSpeedX[i] = int(random(-5, 5));
    eSpeedY[i] = int(random(-5, 5));

    eSize[i] = int(random(10, 100));

    baseColor[i] = color(int(random(0, 192)), int(random(192, 240)), int(random(150, 255))); 
    if (eSpeedX[i] == 0) {
      eSpeedX[i] = 1;
    }
    if (eSpeedY[i] == 0) {
      eSpeedY[i] = 1;
    }
  }
  minim = new Minim(this);
  player = minim.loadFile("1.mp3");
  player.play();
  x1= 100;
  y1=100;

  x2= 100;
  y2= 200;
  img = loadImage("1.jpg");
  img1 = loadImage("666.png");
  smooth();
  for (int i = 0; i< 10; i+= 1) {
    for (int j = 0; j< 10; j+= 1) {
      d1[i][j]= i *90;
    }
  }
}
void draw() {
  if (now == 0) {
    background(255);
    if (a == 1) {
      for (int i =0; i<numE; i++) {
        ePosX[i] = ePosX[i] + eSpeedX[i]; 
        ePosY[i] = ePosY[i] + eSpeedY[i];
      }

      //setup boundaries for ellipses
      for (int i =0; i<numE; i++) {
        if (ePosX[i] <= 0 || ePosX[i]>= width) {
          eSpeedX[i] = eSpeedX[i]*-1;
        }
        if (ePosY[i] <= 0 || ePosY[i]>= height) {
          eSpeedY[i] = eSpeedY[i]*-1;
        }
      }
    }
    //draw ellipse later 
    for (int i =0; i<numE; i++) {
      fill(baseColor[i]); 
      ellipse(ePosX[i], ePosY[i], eSize[i], eSize[i]);
    }
    // back();
    tt = tt +2;
    people();
    nangua();
    for (int i = 0; i< 10; i+= 1) {
      for (int j = 0; j< 10; j+= 1) {
        image(img1, d1[i][j], 700, 40, 80);
      }
    }
  }
  if (now == 1) {


    noStroke();
    int x = int(random(800));
    int y = int(random(800));
    // Back to shapes! Instead of setting a pixel, we use the color 
    // from a pixel to draw a circle.
    fill(random(255));
    rect(x, y, 18, 18);
  }
  if (now == 2)
  {
    frameRate(60);
    if (aa < 801)
      aa++;
    background(194, 221, 235, 1);

    println(calcDistance(x1, y1));
    Color = map(mouseX, 0, width, 0, 255); 


    fill(212, 212, 240);

    for (int i = 25; i< aa; i+= 100) {
      for (int j = 25; j< aa; j+= 100) {

        fill(map(i, mouseX, mouseY, Color, 255), map(j, mouseX, mouseY, Color, 255));
        rect(i, j, size, size);
      }
    }

    fill(144, 144, 169);

    for (int i = 50; i< aa; i+= 100) {
      for (int j = 50; j< aa; j+= 100) {
        fill(210);
        ellipse(i, j, size, size);
      }
    }
  }
}

void people() {
  strokeWeight(1);
  stroke(0);
  fill(255);
  ellipse(400, 400, 280, 280);

  fill(255);
  triangle(275, 370, 294, 398, 314, 386);

  fill(0);
  ellipse(294+(mouseX-400)/90, 385+(mouseY-400)/90, 10, 10);

  noFill();
  bezier(276, 463, 300, 493, 320, 493, 340, 453);

  fill(0);
  translate(width/2, height/2);
  rotate(PI*1.2);
  translate(-width/2, -height/2);
  arc(400, 400, 280, 280, -PI*0.1, 1*PI, PIE);

  fill(#A5A3A3);
  ellipse(400, 400, 100, 100);
  ellipse(400, 400, 50, 50);

  translate(width/2, height/2);
  rotate(PI*0.8);
  translate(-width/2, -height/2);
  if (mousePressed) {
    strokeWeight(mouseX/100);
    click = true;
    number = 1;
  } else
  {
    strokeWeight(1);
    click = false;
    number = 0;
  }
  stroke(255);
  line(381, 351, 354, 265);
  line(407, 349, 378, 259);
  noFill();
  ellipse(379+(mouseX-400)/50, 300+(mouseY-400)/50, 24, 24);
  PVector  v1 = new PVector(400, 400);
  PVector  v2 = new PVector(mouseX, mouseY);
  float d = v1.dist(v2);
  println(d);
  if (d < 80)
  {
    float m = map(25, 0, 100, -20, -100);
    ellipse(400, 400, m, m);
    float mx = constrain(mouseX, 30, 70);
    rect(365, 365, mx, mx);
  }
}
void nangua() {
  for (int l = 0; l < 150; l++)
    d[l]+=2;
  if (click) {
    fill(255, 0, 0);
    ellipse(400, 400, 20, 20);
  }
  switch(number) {
  case 0: 
    break;
  case 1: 
    ellipse(20, 20, 20, 20);
    break;
  }
}
void mousePressed() {
  //measuring the distance between each individual ellipse
  float d = dist(mouseX, mouseY, 400, 400);
  a = -a;
  if (d<50)
  {
    now = 1;
    background(255);
    player.pause();
  }
}
float calcDistance(int xPos, int yPos) {
  dist = dist(mouseX, mouseY, xPos, yPos);
  return dist;
}