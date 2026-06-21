float calcularRotacion(float mouseX, float mouseY) {
  float distancia = dist(mouseX, mouseY, 600, 200);
  float rotacion = map(distancia, 0, 500, 0, radians(35));
  return rotacion;
}
