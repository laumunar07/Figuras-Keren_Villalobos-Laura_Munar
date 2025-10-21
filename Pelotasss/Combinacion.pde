class Combinacion {
  Pelota pelota;
  Cuadrado[] cuadrados;
  float x, y;      // posición del sistema
  float vX, vY;    // velocidad del sistema
  float angulo;    // rotación del sistema
  float distancia; // distancia de los cuadrados al centro

  Combinacion(float x_, float y_) {
    x = x_;
    y = y_;
    vX = random(-3, 3);
    vY = random(-2, 2);
    angulo = 0;
    
    // Crear pelota central
    pelota = new Pelota(0, 0, 40, 0, 0, color(0));

    
    // Crear cuadrados alrededor
    distancia = pelota.r + 50;
    cuadrados = new Cuadrado[4];
    color c = color(#35BC80);
    
    for (int i = 0; i < 4; i++) {
      float a = HALF_PI * i;
      float cx = cos(a) * distancia;
      float cy = sin(a) * distancia;
      cuadrados[i] = new Cuadrado(cx, cy, 20, 0, 0, c);
      cuadrados[i].setTexto(str(i+1));
    }
  }

  void mover() {
    // Mover el sistema
    x += vX;
    y += vY;

    // Rebote en los bordes
    if (x + pelota.r + distancia > width || x - pelota.r - distancia < 0) vX *= -1;
    if (y + pelota.r + distancia > height || y - pelota.r - distancia < 0) vY *= -1;

    // Rotar el conjunto
    angulo += 0.02;
  }

  void dibujar() {
    pushMatrix();
    translate(x, y);
    rotate(angulo);
    
    // Dibuja pelota
    pelota.dibujar();
    
    // Dibuja cuadrados
    for (Cuadrado c : cuadrados) {
      c.dibujar();
    }
    popMatrix();
  }
}
