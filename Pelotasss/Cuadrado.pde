class Cuadrado extends Figura{
  String texto = "";
  Cuadrado(float x_, float y_, float r_, float vX_, float vY_, color relleno){
    super(x_, y_, r_, vX_, vY_, relleno);
  }
  void dibujar(){
    rectMode(CENTER);
    fill(this.colorRelleno);
    rect(x, y, 2*r, 2*r);
    fill(0);
    text(this.texto, x, y);
  }
  
  //Métodos de Clase
  void setTexto(String texto_){
    this.texto = texto_;
  }
}
