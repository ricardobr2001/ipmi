//RICARDO XAVIER BARBA RIOFRIO
//COMISION 5
//LEGAJO: 94786/2

String estado;
int c;
int posX;
int posY;
int tamFont;
PImage img;
PImage img2;
PImage img3;
PFont font;
float x=0.0;
float y=480.0;
float targetX=30.0;
float targetY=190.0;
float easing=0.01;


void setup(){
  size(640,480);
  textSize(40);
  noStroke();
  estado="inicio";
  frameRate(60);
  img= loadImage("principito 1.jpg");
  img2= loadImage("principito 2.jpg");
  img3= loadImage("principito 3.jpg");
  font=createFont("Times new roman", 40);
  tamFont = 0;
  posX = 30;
  posY = 30;
  
}

void draw(){
textFont(font);

//PANTALLA 1

if(estado.equals("inicio")){
  image(img,0,0,640,480);
  fill(0);
  text ("Buenos dias!\nHoy vamos a\nhablar de\nEl Principito!",posX,posY);
  posY++;
  c++;
  if(c>=500){
    estado="p1";
    c=0;
  }
} 

//PANTALLA 2

if (estado.equals("p1")){
  image(img3,0,0,640,480);
  fill(0);
  float d = dist(x,y,targetX,targetY);
if(d>1.0){
  x +=(targetX-x) * easing;
  y +=(targetY-y) * easing;
}
  textSize(20);
  text("Sinopsis:\n-Narrador: Un aviador varado en el desierto del \nSahara tras un accidente.\n-Encuentro: Conoce a un joven príncipe que proviene del asteroide B 612.\n-Viajes del principito: Visita varios planetas, cada uno habitado por un \nadulto con características peculiares.\n-Reflexiones: El principito reflexiona sobre la naturaleza humana y cómo los \nadultos pierden la capacidad de ver lo esencial.\n-Encuentro en la Tierra: Conoce a un zorro que le \nenseña el valor de la amistad y el amor.\n-Desenlace: El principito regresa a su planeta, dejando \nal aviador y a los lectores una reflexión profunda \nsobre la inocencia, la sabiduría y el amor verdadero.", x-10,y-150);
  c++;
  if(c>=900){
    estado="p2";
    c=0;
  }
} 

//PANTALLA 3

if (estado.equals("p2")){
  image(img2,0,-350,640,850);
  textSize(15);
  text("Terminar",540,380);
  push();
  textSize(tamFont);
  textAlign(CENTER);
  text("Gracias por ver!",width/2,height/2);
  tamFont++;
  pop();
  
}

println(estado);
}


void mousePressed(){
  if(estado.equals("p2")){
    if(dist(540,380,mouseX,mouseY)<50/2){
      estado="inicio";
      posY = 30;
      x=0.0;
      y=480.0;
      targetX=30.0;
      targetY=190.0;
      easing=0.01;
      tamFont=0;
    }
  }
  
}
