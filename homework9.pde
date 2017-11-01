ArrayList ballCollection;
PImage img; 
void setup() {
  size(720, 900);
  smooth();
  fill(255);
  ballCollection = new ArrayList();
  noStroke();
  img = loadImage("123.png");
  //  for (int i = 0; i < 100; i++) {
  //    Ball myBall = new Ball(width/2, height/2);
  //    ballCollection.add(myBall);
  //  }
}
void draw() {
background(#4BC2F7);
 image(img, width/2-200, height/2+230);
  //wide spray
  Ball myBall = new Ball(width/2, height/2+300, random(-5, 5), random(-10, -5));
  ballCollection.add(myBall);

  //high spray
  Ball myBall2 = new Ball(width/2, height/2+300, random(-1, 1), random(-15, -10));
  ballCollection.add(myBall2);

  //wide spray 2
  Ball myBall3 = new Ball(width/2, height/2+300, random(-5, 5), random(-10, -5));
  ballCollection.add(myBall3);

  //high spray 2
  Ball myBall4 = new Ball(width/2, height/2+300, random(-1, 1), random(-15, -10));
  ballCollection.add(myBall4);
  //CALL FUNCTIONALITY

  for (int i = 0; i < ballCollection.size(); i++) {
    Ball mb = (Ball) ballCollection.get(i);
    mb.run();
  }
}
class Ball {
  float x = 0;
  float y = 0;
  float speedX = random(-5, 5);
  float speedY = random(-10, -5);

  //CONSTRUCTOR
  Ball(float _x, float _y, float _speedX, float _speedY) {
    x = _x;
    y = _y;
    speedX = _speedX;
    speedY = _speedY;
  }
  // FUNCTIONS
  void run() {
    display();
    movement();
    //bounce();
    gravity();
  }
  void gravity() {
    speedY += mouseY/100.0;
  }

  void bounce() {
    if (y > 120) {
      speedY = speedY *-0.25;
    }
    if (y < 90) {
      speedY = speedY *-1;
    }
  }
  void movement() {
    x += speedX;
    y += speedY;
  }
  void display() {
    rect(x, y, 4,4);
    
    // if the speed on the way down is faster than numbers, turn white
    //if(speedY > 5  || speedX > 5){
     // fill(255,255,255,random(100)); //make white and various transparency
   // }else{
   // fill(random(0, 50), random(100, 200), random(200, 255), random(255)); //if not fast then blue green shimmer
   // }

  
  }
}