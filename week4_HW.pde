float radius =20;
float x, y;
float prevX, prevY;
float angle;

void setup() {
  size(500, 500);
  background(250,240,230,2);
  stroke(255);

  x = width/2;
  y = height/2;

  prevX = x;
  prevY = y;

  stroke(255, 64);
  strokeWeight(3);
  point(x, y);
}

void draw() {
  if (mousePressed){
    background(255,228,225,2);
   }
  
  float angle = (TWO_PI /6) *floor(random(6));
  x += cos (angle)*radius;
  y += sin(angle)*radius;

  if (x < 0 || y > height) {
    x = prevX;
    y = prevY;
  }
  if (y < 0 || Y > height) {
    x = prevX;
    y = prevY;
  }
  
  stroke( 255, 64 );
  strokeWeight( 2 );
  line( x, y, prevX, prevY );
  
  prevX = x;
  prevY = y;
}