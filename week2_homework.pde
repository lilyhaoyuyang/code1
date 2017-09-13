void setup() {
 size(500,500);
 background(100,100,100);
}

void draw() {
  stroke(random(100));
  line(mouseX,0,mouseX,height);
  line(0,mouseY,width,mouseY);
  
  fill(50,90);
  rect(mouseX+10,mouseY+10,30,30);
  rect(mouseX+20,mouseY+20,30,30);
  rect(mouseX+30,mouseY+30,30,30);
  
  fill(100,100,100,30);
  noStroke();
  rect(150,150,150,150);
  
  pushMatrix();
  translate(250,250);
  scale(5.0);
  rect(30,30,30,30);
  popMatrix();
}
