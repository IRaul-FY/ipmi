void dibujarBoton(int x, int y, String texto) {
  rectMode(CENTER);
    if (mouseX > 253 && mouseX < 383 && mouseY > 378 && mouseY < 422){
      fill(200, 50, 50);
   } else {
      fill(120, 0, 0); 
   }
    rect(x, y, 130, 45);
    fill(255);
    textSize(22);
    text(texto,318 ,400, 42);
  }
