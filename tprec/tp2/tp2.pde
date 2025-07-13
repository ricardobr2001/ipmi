//RICARDO XAVIER BARBA RIOFRIO COMISION 5
//LEGAJO 94786/2



String estado;
int tiempoPantalla;
boolean botonReiniciar, apareciendo;
PImage img1, img2, img3, img4, img5, img6, img7;
PFont font1, font2, font3, font4, font5;
float x, x2, x3, x6;
float y, y2, y3, y4;
float targetx = 320;
float targetX, targetY, targetX2, targetY2 ;
float easing = 0.02;



void setup() {
  size(640, 480);
  img1 = loadImage("pantalla 1.jpg");
  img2 = loadImage("pantalla 2.jpg");
  img3 = loadImage("pantalla 3.jpg");
  img4 = loadImage("pantalla 4.jpg");
  img5 = loadImage("pantalla 5.jpg");
  img6 = loadImage("pantalla 6.jpg");
  img7 = loadImage("reset.png");
  font1 = loadFont("fuentepantalla1.vlw");
  font2 = loadFont("fuentepantalla2.vlw");
  font3 = loadFont("fuentepantalla3.vlw");
  font4 = loadFont("fuentepantalla4.vlw");
  font5 = loadFont("fuentepantalla5.vlw");
  estado="inicio";
  frameRate(60);
  x = -200;
  x2 = 0;
  y = -450;
  y2 = height;
  targetX = 30;
  targetY = 70;
  x3 = width;
  y3 = height;
  y4 = 500;
  targetX2 = 10;
  targetY2 = 55;
  x6 = width + 200;
  botonReiniciar = true;

}

void draw() {
  
  botonReiniciar = mouseX>480 && mouseY>320 && mouseX<580 && mouseY<420 ;
  
  if(estado.equals("inicio")){          
     image(img1, 0, 0, 640, 480);
     textAlign(CENTER, CENTER);
     textSize(48);
     textFont(font1);
     fill(0);
     text("BIENVENIDOS \n Hoy vamos a hablar \n del cuento: \n El Soldadito de Plomo", x, height/2);
     x += 2;
     if (x > targetx){
        x = targetx;
     }
     tiempoPantalla++;
     if (tiempoPantalla >= 500) {
        estado = "p1";
        tiempoPantalla = 0;
     }
   } 
              
   if(estado.equals("p1")){
     image(img2, 0, 0, 640, 480);
     textAlign(LEFT);
     textSize(16);
     textFont(font2);
     fill(0);
     text("Un poco sobre el autor... \n\nNombre: Hans Christian Andersen. \n\nOrigen: Dinamarca (nació en 1805). \n\nProfesión: Escritor de cuentos infantiles.  \n\nEstilo: Usa la fantasía para enseñar valores \ny reflejar emociones humanas. \n\nTono común: Muchas historias tienen un \ntoque triste o reflexivo. ", x2, y2);
     float dx = targetX - x2;
     float dy = targetY - y2;
     x2 += dx * easing;
     y2 += dy * easing;
     tiempoPantalla++;
     if (tiempoPantalla >= 900) {
        estado = "p2";
        tiempoPantalla = 0;
     }
   }   
      
   if(estado.equals("p2")){
     image(img3, 0, 0, 640, 480);
     textAlign(LEFT);
     textSize(24);
     textFont(font3);
     fill(0);
     text("Breve sinopsis... \n\nUn soldadito de plomo con una sola pierna se \nenamora de una bailarina de papel. \n\nEl soldadito enfrenta peligros y aventuras, incluyendo \ncaer por accidente al suelo y luego al río. \n\nNavega en un barco de papel por el agua, hasta ser \ntragado por un pez. \n\nFinalmente, regresa a la casa del niño que lo posee. \n\nEl soldadito y la bailarina terminan juntos cuando \nun incendio destruye ambos, fundiéndose en una figura.", x3, y3);
     float dx2 = targetX2 - x3;
     float dy2 = targetY2 - y3;
     x3 += dx2 * easing;
     y3 += dy2 * easing;
     tiempoPantalla++;
     if (tiempoPantalla >= 1000) {
        estado = "p3";
        tiempoPantalla = 0;
     }
   }           
      
   if(estado.equals("p3")){
     image(img4, 0, 0, 640, 480);
     textSize(24);
     textFont(font4);
     fill(0);
     text("Algunas curiosidades... \n\nEl soldadito tiene una sola pierna, lo que lo \nhace único. \n\nLos personajes no tienen nombre, lo que da un \ntono universal. \n\nEl cuento tiene un final trágico, no típico en \nhistorias infantiles. \n\nPuede leerse como una crítica social o símbolo \nde amor y valentía. \n\nHa sido adaptado muchas veces en cine, teatro \ny ballet", 10, y);
     if (y < height-450) {
     y += 1;
     }
     tiempoPantalla++;
     if (tiempoPantalla >= 1000) {
        estado = "p4";
        tiempoPantalla = 0;
     }
   } 
      
   if(estado.equals("p4")){
     image(img5, 0, 0, 640, 480);
     textAlign(LEFT);
     textSize(24);
     textFont(font5);
     fill(0);
     text("Impacto en la actualidad... \n\nEl cuento muestra un amor imposible y fiel. \n\nEl soldadito simboliza valentía y resistencia. \n\nRepresenta la diferencia y la inclusión. \n\nSe usa en escuelas para enseñar valores. \n\nSigue presente en adaptaciones culturales", 50,y4);
     if (y4 > 590-height) {
     y4 -= 2;
     }
     tiempoPantalla++;
     if (tiempoPantalla >= 1000) {
        estado = "p5";
        tiempoPantalla = 0;
     }
   }               
            
   if(estado.equals("p5")){
     image(img6, 0, 0, 640, 480);
      image(img7, 480, 320, 100, 100);
      textAlign(CENTER, CENTER);
      textSize(48);
      textFont(font1);
      fill(0);
      text("GRACIAS \nPOR VER", x6, height/2);
      x6 -= 2;
      if (x6 < targetx){ 
        x6 = targetx;}
   }
   
   println(estado);   
}

void mouseClicked() {
  if(estado.equals("p5") && botonReiniciar){
    estado="inicio";
    x = -200;
    x2 = 0;
    y = -450;
    y2 = height;
    targetX = 30;
    targetY = 70;
    x3 = width;
    y3 = height;
    y4 = 500;
    targetX2 = 10;
    targetY2 = 55;
    x6 = width + 200;
    
   
  }
  println(mouseX, mouseY);
}
