ArrayList ballCollection;
float r=100;
float theta= 0;
int num = 50;
float [] xPos = new float[100]; 
Particle[] particles;
int n = 300;
void setup() {
  size(720, 500);
  smooth();
  fill(255);
  ballCollection = new ArrayList();
  noStroke();
  for (int i = 0; i< num; i++) {
    xPos[i] = i * 20;
  }
  particles = new Particle[n];
  for (int i = 0; i < n; i++) {
    PVector p = new PVector(random(0, width), random(0, height));
    particles[i] = new Particle(p);
  }
}
void draw() {
  background(255);
  //scale(0.6);
  PVector D = new PVector(0, 0);
  D.x = 1.5*r*cos(theta); 
  D.y = 1.5*r*sin(theta); 
  //circle
  fill(#5A5858);
  noStroke();
  ellipse( D.x+width/2, D.y+height/2, 20, 20);
  theta +=.01;
  //------------------------------------------------------
  fill(#5F5D5D);
  for (float i = 0; i< 6.3; i+=0.08) {
    xPos[0] = 360+200*cos(i);
    float yy =  250+200*sin(i);
    ellipse(xPos[0], yy, 20, 20);
  }
  //--------------------------------------------
  for (int i = 0; i < n; i++) {
    particles[i].addForce(particles[i].attractTo(360, 250));
    particles[i].run();
  }
  fill(255);
  ellipse(360, 250, 120, 120);
}