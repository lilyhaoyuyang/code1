color bk;
float[] anglesPre;
float[] angles;
void setup(){
  size(800,600);
  
  bk = color(random(255),random(255),random(255));
  
  angles = new float[1200];
  anglesPre = new float[1200];
  for(int i=0; i<1200; i++){
    angles[i] = PI/4;
    if(random(1)<0.5)angles[i] = PI*3/4;
    anglesPre[i] = PI/4;
    if(random(1)<0.5)anglesPre[i] = PI*3/4;
  }
  
  strokeWeight(5);
  strokeCap(ROUND);
  stroke(255);
}

void draw(){
  background(bk);
  
  int n = 0;
  for(int i=20; i<width; i+=20){
    for(int j=20; j<height; j+=20){
      anglesPre[n] += (angles[n]-anglesPre[n])/20;
      drawAline(i,j,anglesPre[n]);
      n++;
    }
  }
}

void mousePressed(){
  bk = color(random(255),random(255),random(255));
  for(int i=0; i<1200; i++){
    angles[i] = PI/4;
    if(random(1)<0.5)angles[i] = PI*3/4;
  }
}

void drawAline(float x, float y, float a){
    pushMatrix();
    translate(x,y);
    rotate(a);
    line(-13,0,13,0);
    popMatrix();
}