//https://www.youtube.com/watch?v=Ijc65Wiupzg
PImage imagen;
int colorAleatorio = 0; 

void setup(){
  size(800, 400);
  imagen = loadImage("24.jpeg");
  rectMode(CENTER);
}
void draw(){
  background(255);
    image(imagen, 0, 0, 400, 400);
  float rotacionExtra = calcularRotacion(mouseX, mouseY);
  float desplazamientoY = map(mouseY, 0, 500, -40, 40);
  
  for (int j = 0; j < 10; j++){
    for (int i = 0; i < 10; i++){
      float posX = 400 + (i * 50);
      float posY = (j * 50) + desplazamientoY;
      float rotacionFinal = radians(50) + rotacionExtra;
      dibujarRectYColor(posX, posY, rotacionFinal, i, colorAleatorio);
      
    }
  }
}

void mousePressed() {
  colorAleatorio = int(random(1, 100));
}
void keyPressed() {
  if (key == ' ') {
    colorAleatorio = 0;
  }
}
