float a;
float r = 15;

int option =1;
int i;
int j;

float minRadius = 10;
float maxRadius = 20;

boolean grow = false;
boolean saveOne = false;

void setup() {
  size(450, 450);
  background(225, 204, 204);
}

void draw()
{
  smooth();
  fill( a, random(20), random(30), 30 );
  noStroke();
  ellipse(mouseX, mouseY, r * 2, r * 2);

  if ( grow ) {
    r++;
    if (r > maxRadius) {
      grow = false;
    }
  } else {
    r--;
    if (r < minRadius) {
      grow = true;

      if (option == 1) {
        noFill();
        for (int i = -5; i <=width; i =i+15) {
          for (int j = -20; j <=height; j=j+25) {
            stroke(i, j, 200);
            strokeWeight(0.1);
            ellipse(20+i, 75+j, 50, 50);
          }
        }
      }
    }
  }
}