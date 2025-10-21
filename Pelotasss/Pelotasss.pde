int conteo = 0;
 
float x = 0;
float y = 0;
int r = 50;
float vX = 2;
float vY = 1.5;
 
ArrayList <Cuadrado> pelotas = new ArrayList<>();

Combinacion sistema;   // Un solo sistema (pelota + cuadrados)

void setup() {
  size(1000, 700);
  noStroke();
  
  // Crear una combinación centrada en pantalla
  sistema = new Combinacion(width / 2, height / 2);
}

void draw() {
  background(#F7FCFA);
  
  // Mover y dibujar el sistema
  sistema.mover();
  sistema.dibujar();
}
  
//Pelota bola = new Pelota(width, height, 100, 5, 2, color(0, 255, 0));
