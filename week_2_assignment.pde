size(500,500);
  smooth();
  background(220,220,220,80);//gainsboro
  noStroke();
  fill(2,119,79,90);
  triangle(0,200,0,499,200,499);
  fill(51,125,86,80);//left one
  beginShape();
  vertex(0,400);
  vertex(145,159);
  vertex(300,499);
  vertex(0,499);
  endShape(CLOSE);
  fill(252,252,252,80);//white
  triangle(30,499,140,300,250,499);
  fill(252,252,252,90);//white
  triangle(50,499,260,250,400,499);
  fill(0,49,41,80);//
  triangle(0,499,160,300,300,499);
  fill(32,98,124,90);
  triangle(0,499,90,400,170,499);
  fill(107,155,184,60);
  triangle(230,499,350,300,450,499);
  fill(139,163,158,99);//grey one
  triangle(160,499,300,220,400,499);
  fill(4,58,185,80);
  triangle(290,499,400,170,499,499);
  fill(21,106,30,60);
  triangle(150,499,340,200,499,499);
  fill(196,266,216,70);//right one
  beginShape();//green more white
  vertex(270,499);
  vertex(450,150);
  vertex(499,250);
  vertex(499,499);
  endShape(CLOSE);
  fill(19,30,30,90);//small one
  triangle(400,499,450,370,499,499);
  fill(255,255,255,99);
  triangle(120,499,220,400,300,499);
  fill(242,155,135,99);
  ellipse(450,50,60,60);
   save("week_2 assignment.pdf");//save file