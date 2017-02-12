float x; //width
float y; //height
float v1; //speed of width
float v2; //speed of height
int d; //dimater

void setup()
{
size(300,300);
frameRate(40);
noStroke();
fill(0);
smooth();

x=width/2; 
y=height/2; 

v1=random(-3,3); 
v2=random(-3,3); 
d=30; 
}

void draw()
{
background(238,238,238);
noStroke();
fill(random(0,255),random(0,255),random(0,255));
if (mouseX < 150 && mouseY < 150) {
rect(0,0,150,150);
} else if (mouseX > 150 && mouseY < 150) {
rect(150,0,150,150);
} else if (mouseX < 150 && mouseY > 150) {
rect(0,150,150,150);
} else if (mouseX > 150 && mouseY > 150) {
rect(150,150,150,150);
}

fill(0,0,0,60);
noStroke();
ellipse(x,y,d,d);
x+=v1; 
y+=v2;
if (x<=d/2 || x>=width-d/2)
{
v1=-1*v1;
}

if (y<=d/2 || y>=height-d/2)
{
v2=-v2;
}}