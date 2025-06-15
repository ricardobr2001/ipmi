//RICARDO XAVIER BARBA RIOFRIO
//COM 5
// LEGAJO: 94786/2
// https://youtu.be/fp_byh3C2gE


PImage img;
float distX = 57.14285714285714;
float distY = 57.14285714285714;
color colorInicial, colorMedio, colorFinal, c;
boolean activarE = false;
boolean activarC = false;
boolean activarU = false;
boolean activarA = false;

void setup() {
  size(800, 400);
  background(255);
  img = loadImage("tp3.jpg");
}

void draw() {
  image(img, 0, 0, 400, 400);
  noStroke();
  for (int x = 0; x <= 7; x++) {
    for (int y = 0; y <= 7; y++) {
      colorCuadrados(87, 35, 100, 194, 59, 34, 255, 217, 113);
      if (activarE) {
        if (y <= 1) {
          c = color(255, 238, 140);
        } else if (y <= 4) {
          c = color(0, 0, 128);
        } else {
          c = color(194, 59, 34);
        }
      } else {
        if (y <= 3) {
          float f = map(y, 0, 3, 0, 1);
          c = color(
            int(map(f, 0, 1, red(colorInicial), red(colorMedio))),
            int(map(f, 0, 1, green(colorInicial), green(colorMedio))),
            int(map(f, 0, 1, blue(colorInicial), blue(colorMedio)))
          );
        } else {
          float f = map(y, 4, 7, 0, 1);
          c = color(
            int(map(f, 0, 1, red(colorMedio), red(colorFinal))),
            int(map(f, 0, 1, green(colorMedio), green(colorFinal))),
            int(map(f, 0, 1, blue(colorMedio), blue(colorFinal)))
          );
        }
      }
      fill(c);
      square(distX * x + 400, distY * y, 28.57142857142857);
    }
  }

  for (int x = 0; x <= 7; x++) {
    for (int y = 0; y <= 7; y++) {
      colorCuadrados(0, 0, 128, 82, 163, 136, 255, 238, 140);
      if (activarC) {
        if (y <= 1) {
          c = color(245, 230, 140);
        } else if (y <= 4) {
          c = color(0, 0, 140);
        } else {
          c = color(180, 59, 34);
        }
      } else {
        if (x <= 3) {
          float f = map(x, 0, 3, 0, 1);
          c = color(
            int(map(f, 0, 1, red(colorInicial), red(colorMedio))),
            int(map(f, 0, 1, green(colorInicial), green(colorMedio))),
            int(map(f, 0, 1, blue(colorInicial), blue(colorMedio)))
          );
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
      }
      fill(c);
      square(distX * x + 428.57142857142857, distY * y, 28.57142857142857);
    }
  }

  for (int x = 0; x <= 7; x++) {
    for (int y = 0; y <= 7; y++) {
      colorCuadrados(255, 238, 140, 82, 163, 136, 0, 0, 128);
      if (activarU) {
        if (y <= 1) {
          c = color(255, 245, 140);
        } else if (y <= 4) {
          c = color(0, 0, 120);
        } else {
          c = color(200, 59, 34);
        }
      } else {
        if (x <= 3) {
          float f = map(x, 0, 3, 0, 1);
          c = color(
            int(map(f, 0, 1, red(colorInicial), red(colorMedio))),
            int(map(f, 0, 1, green(colorInicial), green(colorMedio))),
            int(map(f, 0, 1, blue(colorInicial), blue(colorMedio)))
          );
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
      }
      fill(c);
      square(distX * x + 400, distY * y + 28.57142857142857, 28.57142857142857);
    }
  }

  for (int x = 0; x <= 7; x++) {
    for (int y = 0; y <= 7; y++) {
      colorCuadrados(255, 217, 113, 194, 59, 34, 87, 35, 100);
      if (activarA) {
        if (y <= 1) {
          c = color(255, 238, 130);
        } else if (y <= 4) {
          c = color(0, 0, 150);
        } else {
          c = color(194, 59, 50);
        }
      } else {
        if (y <= 3) {
          float f = map(y, 0, 3, 0, 1);
          c = color(
            int(map(f, 0, 1, red(colorInicial), red(colorMedio))),
            int(map(f, 0, 1, green(colorInicial), green(colorMedio))),
            int(map(f, 0, 1, blue(colorInicial), blue(colorMedio)))
          );
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
      }
      fill(c);
      square(distX * x + 428.57142857142857, distY * y + 28.57142857142857, 28.57142857142857);
    }
  }
}

void colorCuadrados(int r1, int g1, int b1, int r2, int g2, int b2, int r3, int g3, int b3) {
  colorInicial = color(r1, g1, b1);
  colorMedio = color(r2, g2, b2);
  colorFinal = color(r3, g3, b3);
}

void reiniciarEstado() {
  activarE = false;
  activarC = false;
  activarU = false;
  activarA = false;
}

boolean verificarTecla(char tecla) {
  return key == tecla;
}

void keyPressed() {
  if (verificarTecla('e')) {
    activarE = true;
  }
  if (verificarTecla('c')) {
    activarC = true;
  }
  if (verificarTecla('u')) {
    activarU = true;
  }
  if (verificarTecla('a')) {
    activarA = true;
  }
  if (verificarTecla('r')) {
    reiniciarEstado();
  }
}
