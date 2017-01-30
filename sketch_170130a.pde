void setup() {
  size(800,800);
}
void draw() {
  background(150,100,100);
  ellipse(mouseX,mouseY,50,50);
  ellipse(mouseX+200,mouseY,50,50);
  rect(mouseX+79,mouseY+100,60,30);
}