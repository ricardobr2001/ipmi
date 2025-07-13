//RICARDO XAVIER BARBA RIOFRIO
//COM 5
// LEGAJO: 94786/2
//https://youtu.be/w9iATShymRQ


PImage img;
float distX = 57.14285714285714;
float distY = 57.14285714285714;
color colorInicial, colorMedio, colorFinal, c;
float lado = 28.57142857142857;


boolean grisM1 = false;
boolean grisM2 = false;
boolean grisM3 = false;
boolean grisM4 = false;

void setup() {
  size(800, 400);
  background(255);
  img = loadImage("tp3.jpg");
}

void draw() {
  image(img, 0, 0, 400, 400);
  noStroke();

  // MATRIZ 1
  for (int x = 0; x <= 7; x++) {
    for (int y = 0; y <= 7; y++) {
      if (grisM1) {
        colorCuadrados(0, 0, 0, 127, 127, 127, 255, 255, 255);
      } else {
        colorCuadrados(87, 35, 100, 194, 59, 34, 255, 217, 113);
      }

      if (y <= 3) {
        float f = map(y, 0, 3, 0, 1);
        c = colorDegradado(f, colorInicial, colorMedio);
      } else {
        float f = map(y, 4, 7, 0, 1);
        c = color(
          int(map(f, 0, 1, red(colorMedio), red(colorFinal))),
          int(map(f, 0, 1, green(colorMedio), green(colorFinal))),
          int(map(f, 0, 1, blue(colorMedio), blue(colorFinal)))
        );
      }

      float posX = distX * x + 400;
      float posY = distY * y;
      float centroX = posX + lado/2;
      float centroY = posY + lado/2;
      if (dist(mouseX, mouseY, centroX, centroY) < lado/2) {
        fill(255 - red(c), 255 - green(c), 255 - blue(c));
      } else {
        fill(c);
      }
      square(posX, posY, lado);
    }
  }

  // MATRIZ 2
  for (int x = 0; x <= 7; x++) {
    for (int y = 0; y <= 7; y++) {
      if (grisM2) {
        colorCuadrados(0, 0, 0, 127, 127, 127, 255, 255, 255);
      } else {
        colorCuadrados(0, 0, 128, 82, 163, 136, 255, 238, 140);
      }

      if (x <= 3) {
        float f = map(x, 0, 3, 0, 1);
        c = colorDegradado(f, colorInicial, colorMedio);
      } else if (x < 7) {
        float f = map(x, 4, 6, 0, 1);
        c = color(
          int(map(f, 0, 1, red(colorMedio), red(colorFinal))),
          int(map(f, 0, 1, green(colorMedio), green(colorFinal))),
          int(map(f, 0, 1, blue(colorMedio), blue(colorFinal)))
        );
      } else {
        c = colorFinal;
      }

      float posX = distX * x + 428.57142857142857;
      float posY = distY * y;
      float centroX = posX + lado/2;
      float centroY = posY + lado/2;
      if (dist(mouseX, mouseY, centroX, centroY) < lado/2) {
        fill(255 - red(c), 255 - green(c), 255 - blue(c));
      } else {
        fill(c);
      }
      square(posX, posY, lado);
    }
  }

  // MATRIZ 3
  for (int x = 0; x <= 7; x++) {
    for (int y = 0; y <= 7; y++) {
      if (grisM3) {
        colorCuadrados(255, 255, 255, 127, 127, 127, 0, 0, 0);
      } else {
        colorCuadrados(255, 238, 140, 82, 163, 136, 0, 0, 128);
      }

      if (x <= 3) {
        float f = map(x, 0, 3, 0, 1);
        c = colorDegradado(f, colorInicial, colorMedio);
      } else if (x < 7) {
        float f = map(x, 4, 6, 0, 1);
        c = color(
          int(map(f, 0, 1, red(colorMedio), red(colorFinal))),
          int(map(f, 0, 1, green(colorMedio), green(colorFinal))),
          int(map(f, 0, 1, blue(colorMedio), blue(colorFinal)))
        );
      } else {
        c = colorFinal;
      }

      float posX = distX * x + 400;
      float posY = distY * y + lado;
      float centroX = posX + lado/2;
      float centroY = posY + lado/2;
      if (dist(mouseX, mouseY, centroX, centroY) < lado/2) {
        fill(255 - red(c), 255 - green(c), 255 - blue(c));
      } else {
        fill(c);
      }
      square(posX, posY, lado);
    }
  }

  // MATRIZ 4
  for (int x = 0; x <= 7; x++) {
    for (int y = 0; y <= 7; y++) {
      if (grisM4) {
        colorCuadrados(255, 255, 255, 127, 127, 127, 0, 0, 0);
      } else {
        colorCuadrados(255, 217, 113, 194, 59, 34, 87, 35, 100);
      }

      if (y <= 3) {
        float f = map(y, 0, 3, 0, 1);
        c = colorDegradado(f, colorInicial, colorMedio);
      } else if (y < 7) {
        float f = map(y, 4, 6, 0, 1);
        c = color(
          int(map(f, 0, 1, red(colorMedio), red(colorFinal))),
          int(map(f, 0, 1, green(colorMedio), green(colorFinal))),
          int(map(f, 0, 1, blue(colorMedio), blue(colorFinal)))
        );
      } else {
        c = colorFinal;
      }

      float posX = distX * x + 428.57142857142857;
      float posY = distY * y + lado;
      float centroX = posX + lado/2;
      float centroY = posY + lado/2;
      if (dist(mouseX, mouseY, centroX, centroY) < lado/2) {
        fill(255 - red(c), 255 - green(c), 255 - blue(c));
      } else {
        fill(c);
      }
      square(posX, posY, lado);
    }
  }
}

void colorCuadrados(int r1, int g1, int b1, int r2, int g2, int b2, int r3, int g3, int b3) {
  colorInicial = color(r1, g1, b1);
  colorMedio = color(r2, g2, b2);
  colorFinal = color(r3, g3, b3);
}

void keyPressed() {
  if (key == 'b') grisM1 = !grisM1;
  if (key == 'l') grisM2 = !grisM2;
  if (key == 'n') grisM3 = !grisM3;
  if (key == 'g') grisM4 = !grisM4;
  if (key == 'r') resetValores();
}

void resetValores() {
  grisM1 = false;
  grisM2 = false;
  grisM3 = false;
  grisM4 = false;
  
  
}

color colorDegradado(float f, color c1, color c2) {
  int r = int(map(f, 0, 1, red(c1), red(c2)));
  int g = int(map(f, 0, 1, green(c1), green(c2)));
  int b = int(map(f, 0, 1, blue(c1), blue(c2)));
  return color(r, g, b);
}
