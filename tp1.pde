PImage sandia;

void setup(){
  background(200);
  size(800,400);
  sandia= loadImage("sandia.png");
}

void draw(){
  image(sandia,0,0,400,400);
  noStroke();
  fill(103,175,53);
  ellipse(600,0,400,800);
  fill(208,245,208);
  ellipse(600,0,390,790);
  fill(250,58,58);
  ellipse(600,0,350,720);
  fill(200);
  rect(400,0,400,20);
  fill(0);
  ellipse(580,220,20,40);
  ellipse(640,220,20,40);
  ellipse(530,150,20,40);
  ellipse(570,150,20,40);
  ellipse(500,80,20,40);
  ellipse(720,70,20,40);
  ellipse(640,150,20,40);
  ellipse(680,130,20,40);
  ellipse(700,170,20,40);
  ellipse(500,200,20,40);
  
}

void mouseClicked(){
  println(mouseX,mouseY);
}
