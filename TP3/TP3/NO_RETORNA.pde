void dibujarRectYColor(float x, float y, float rotacionExtra, int numeroColumna, int estado) {
  pushMatrix();
  translate(x, y);
  rotate(radians(50) + rotacionExtra);
  if (estado == 0) {
    if (numeroColumna % 2 == 0) {
      fill(0);
    } else {
      fill(200);
    }
  } else {
    float rojo = (numeroColumna * 45 + estado * 13) % 255;
    float verde = (numeroColumna * 85 + estado * 27) % 255;
    float azul = (numeroColumna * 125 + estado * 7) % 255;
    fill(rojo, verde, azul); 
  }
  rect(0, 0, 50, 50);
  popMatrix();
}
