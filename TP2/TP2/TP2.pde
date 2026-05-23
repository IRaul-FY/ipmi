PImage imgEVAlogo, TresP, Shinji, Asuka, Rei, Gendo, Misato, Eva01, Eva02, Eva00;
PImage fondo, fondo1, fondo2, fondo3, fondo4, fondo5, fondo6, FinHumanidad;
PFont mitexto, mitexto2;
int pantalla = 0;
boolean presentacionIniciada = false;
int tiempoInicioPantalla = 0;
int duracion = 10000;
//Pantalla1
float posX = -300;
int tam = 280;
int dir = 2;
float evaX = -300;
float dirEva = 3;
float textoX = -640;
float velTexto = 5;
//Pantalla2
int posX2;
int tam2 = 280;
int dir2 = 2;
float evaX2 = -300;
float dirEva2 = 4;
float textoX2 = -640;
float velTexto2 = 5;
//Pantalla3
int posX3;
int tam3 = 280;
int dir3 = 2;
float evaX3 = -300;
float dirEva3 = 4;
float textoX3 = -640;
float velTexto3 = 5;
//Pantalla4
int tam4 = 280;
float posX4 = -300;
float dir4 = 4;
float textoGendoX = -400;
float velTextoGendo = 4;
float MisaX4 = 800;
float dirMisa4 = 4;
float textoMisaX = 1000;
float velTextoMisa = 4;
//Pantalla5
float posY5 = 500;
float dirY5 = 3;
float ancho = 400;
float alto = 280;
float textoX5 = -500;
float velTexto5 = 5;

void setup() {
  size(640, 480);
  fondo = loadImage("fondo1.jpg");
  fondo1 = loadImage("003.jpg");
  fondo2 = loadImage("237220-ayanami.jpg");
  fondo3 = loadImage("fondoasuka3.jpg");
  fondo4 = loadImage("fondogendoymisato.jpg");
  fondo5 = loadImage("Tercerimpacto.jpg");
  fondo6 = loadImage("FindelaPresentacion.jpg");
  FinHumanidad = loadImage("FinHuman.jpg");
  imgEVAlogo = loadImage("evangelion neon genesis.png");
  TresP = loadImage("Shinji, Asuka, Rei.png");
  Shinji = loadImage("Shinji.png");
  Eva01 = loadImage("EVA01.png");
  Asuka = loadImage("Asuka.png");
  Eva02 = loadImage("eva02.png");
  Rei = loadImage("Rei.png");
  Eva00 = loadImage("eva00.png");
  Gendo = loadImage("GendoIkari.png");
  Misato = loadImage("misato.png");
  mitexto = loadFont("TimesNewRomanPS-BoldMT-30.vlw");
  textAlign(CENTER, CENTER);
}
void draw() {
  background(15);
  //pantalla 0: Inicio
  if (pantalla == 0) {
    image(fondo, 0, 0, 640, 480);
    image(imgEVAlogo, 120, -120, 400, 400);
    image(TresP, 150, 200, 350, 400);
    dibujarBoton(318, 400 + 5, "INICIAR");
  }
  else if (presentacionIniciada == true && pantalla >= 1 && pantalla <= 6) {
    int tiempoPasado = millis() - tiempoInicioPantalla; 
    //Pantalla 1: Shinji
    if (pantalla == 1) {
      image(fondo1, 0, 0, 640, 480);
      image(Shinji, posX, 200, tam, tam);
      posX = posX + dir;
      if (posX >= 50){
        posX = 50;
        dir = 0;
      }
      image(Eva01, evaX, 200, tam, tam);
      evaX = evaX + dirEva;
      if (evaX >= 300){
        evaX = 300;
        dirEva = 0;
      }
      fill(0, 180);
      textoX = textoX + velTexto;
      if (textoX >= width/2){
        textoX = width/2;
        velTexto = 0;
      }
      textAlign(CENTER);
      fill(150, 100, 255);
      textSize(40);
      text("SHINJI IKARI", textoX, 50);
      textFont(mitexto);
      fill(255);
      textSize(20);
      text("Piloto del Evangelion Unidad 01.\n\nObligado por su padre(Gendo Ikari) a luchar contra los Ángeles,\nShinji lidia con la depresión, el miedo al rechazo\ny el dilema de huir o enfrentar su destino.", textoX, 100);
    }
    // Pantalla 2: Rei
    else if (pantalla == 2) {
      image(fondo2, 0, 0, 640, 480);
      image(Rei, posX2, 200, tam2, tam2);
      posX2 = posX2 + dir2;
      if (posX2 >= 50){
        posX2 = 50;
        dir2 = 0;
      }
      image(Eva00, evaX2, 200, tam2, tam2);
      evaX2 = evaX2 + dirEva2;
      if (evaX2 >= 300){
        evaX2 = 300;
        dirEva2 = 0;
      }
      fill(0, 180);
      textoX2 = textoX2 + velTexto2;
      if (textoX2 >= width/2){
        textoX2 = width/2;
        velTexto2 = 0;
      } 
      fill(100, 200, 255);
      textSize(40);
      text("REI AYANAMI", textoX2, 50);
      textFont(mitexto);
      fill(255);
      textSize(20);
      text("La Primera Niña. Piloto del Evangelion Unidad 00.\n\n Silenciosa y carente de emociones aparentes.\nGuarda un oscuro secreto sobre su verdadera\nnaturaleza y su conexión con Gendo Ikari.", textoX2, 100);
    }
    //Pantalla 3: Asuka
    else if (pantalla == 3) {
      image(fondo3, 0, 0, 640, 480);
      image(Asuka, posX3, 200, tam3, tam3);
      posX3 = posX3 + dir3;
      if (posX3 >= 50){
        posX3 = 50;
        dir3 = 0;
      }
      image(Eva02, evaX3, 200, tam3, tam3);
      evaX3 = evaX3 + dirEva3;
      if (evaX3 >= 300){
        evaX3 = 300;
        dirEva3 = 0;
      }
      fill(0, 180);
      textoX3 = textoX3 + velTexto3;
      if (textoX3 >= width/2){
        textoX3 = width/2;
        velTexto3 = 0;
      }
      fill(255, 50, 50);
      textSize(40);
      text("ASUKA", textoX3, 50);
      textFont(mitexto);
      fill(255);
      textSize(20);
      text("La Segunda Niña. Piloto del Evangelion Unidad 02.\n\nProdigio y extremadamente orgullosa.\nUsa su agresividad y actitud superior para\n ocultar sus profundos traumas de la infancia.", textoX3, 100);
    }
    //pantalla 4:Gendo y Misato
    else if (pantalla == 4) {
      image(fondo4, 0, 0, 640, 480);
      image(Gendo, posX4, 100, tam4, tam4);
      posX4 = posX4 + dir4;
      if (posX4 >= 50) {
        posX4 = 50;
        dir4 = 0;
      }  
      textoGendoX = textoGendoX + velTextoGendo;
      if (textoGendoX >= 400) {
        textoGendoX = 400;
        velTextoGendo = 0;
      }
      fill(180, 50, 50);
      textSize(35);
      textAlign(CENTER);
      text("GENDO IKARI", textoGendoX, 50);
      textFont(mitexto);
      fill(255);
      textSize(16);
      text("Gendo Ikari es el comandante supremo de la organización NERV\n\n Es un hombre frío, calculador\ny manipulador, obsesionado con el Proyecto de\nInstrumentación Humana( iniciar un nuevo impacto).", textoGendoX, 90);
      //Misato
      image(Misato, MisaX4, 200, tam4, tam4);
      MisaX4 = MisaX4 - dirMisa4; 
      if (MisaX4 <= 350) {
          MisaX4 = 350;
          dirMisa4 = 0;
      }
      textoMisaX = textoMisaX - velTextoMisa;
      if (textoMisaX <= 160) {
          textoMisaX = 160;
          velTextoMisa = 0;
      }
      fill(100, 100, 255);
      textSize(35);
      text("MISATO KATSURAGI", textoMisaX, 380); 
      textFont(mitexto);
      fill(255);
      textSize(16);
      text("Jefa de operaciones tácticas en NERV.\nProtectora de los pilotos y cargada con un\npasado traumático que oculta tras su optimismo.", textoMisaX, 420);
    }
     else if (pantalla == 5) {
      println("X: " + mouseX + " Y: " + mouseY);
      image(fondo5, 0, 0, 640, 480);    
      image(FinHumanidad, width/2 - ancho/2, posY5, ancho, alto);
      posY5 = posY5 - dirY5;
      if (posY5 <= 180){
          posY5 = 180;
          dirY5 = 0;
      }
      textoX5 = textoX5 + velTexto5;
      if (textoX5 >= width/2) {
        textoX5 = width/2;
        velTexto5 = 0;
      }
      textAlign(CENTER);
      fill(255, 0, 0);
      textSize(40);
      text("EL TERCER IMPACTO", textoX5, 50);
      textFont(mitexto);
      fill(255);
      textSize(20);
      text("El evento cataclísmico que desencadena la Instrumentación Humana.\nLas fronteras del ego se disuelven, las almas se fusionan en un\ntodo absoluto y la humanidad regresa a sus orígenes ancestrales,\ndejando el destino del nuevo mundo en manos de Shinji.", textoX5, 100);
    }
    //Pantalla 6
    else if (pantalla == 6) {
      image(fondo6, 0, 0, 640, 480);
      fill(255);
      textSize(40);
      text("FIN", width/2, height/2 - 50);
      textSize(20);
      fill(0);
      text("Haz click en el boton para reiniciar", width/2, height/2 + 20);
      dibujarBoton(318, 400 , "REINICIAR");
    }  
    if (tiempoPasado > duracion && pantalla <= 5) {
      pantalla++; 
      tiempoInicioPantalla = millis();
    }
  }
}
void mousePressed() {
  if (pantalla == 0) {
    if (mouseX > 253 && mouseX < 383 && mouseY > 378 && mouseY < 422){
      pantalla = 1; 
      presentacionIniciada = true; 
      tiempoInicioPantalla = millis(); 
    }
  } 
  if (pantalla == 6) {
    if (mouseX > 253 && mouseX < 383 && mouseY > 378 && mouseY < 422){
      pantalla = 0;
      presentacionIniciada = false;
    }
  }
}
