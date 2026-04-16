PImage miImagen;

void setup() {
  size(800,400);
  miImagen = loadImage("imagen.jpg");
}

void draw() {
  //Fondo
  background(15,10,5);
  image(miImagen,0,0,400,400);
  fill(100,74,39);
  ellipse(600,200, 360, 460);
  fill(142,111,70);
  ellipse(600,200, 300, 400);
  //Cara
  fill(240, 210, 160);
   beginShape(); 
  vertex(547,86);
  vertex(510,118);
  vertex(523,175);
  vertex(581,193);
  vertex(622,152);
  vertex(610,97);
  endShape(CLOSE);
   //3.pelo
   fill(#5A4427);
   circle(546,83,35);
   circle(522,99,35);
   circle(576,82,35);
   circle(510,124,35);
   circle(604,92,35);
   circle(517,153,35);
   circle(616,125,35);
   circle(526,186,35);
   circle(624,160,35);
   //4.ojos
   fill(0);
   circle(546,131,15);
   circle(580,126,15);
   line(531,120,554,117);
   line(567,117,592,114);
   //5.nariz
   fill(#866831);
   triangle(564,135,557,144,571,143);
   //6.boca
   fill(152,122,63);
   beginShape();
   vertex(547,160);
   bezierVertex(559, 176, 586, 171, 588,148);
   endShape(CLOSE);
   line(551,154,541,164);
   line(581,144,595,149);
   //7.cuerpo
   fill(240, 210, 160);
   ellipse(586,290,140,200);
   fill(#36270A);
   quad(609,194,657,242,656,389,540,389);
   beginShape();
   vertex(516,290);
   bezierVertex(538,465,660,400,655,281);
   endShape(CLOSE);
   //8.cruz
   fill(39,25,4);
   rect(660,42,15,400);
   beginShape();
   vertex(627,85);
   vertex(627,100);
   vertex(713,100);
   vertex(713,85);
   endShape(CLOSE);
   //9.mano
   fill(240, 210, 160);
    beginShape();
   vertex(605,218);
   vertex(607,215);
   vertex(615,222);
   vertex(611,214);
   vertex(615,212);
   vertex(639,234);
   vertex(651,249);
   vertex(658,270);
   vertex(642,284);
   vertex(632,258);
   vertex(624,249);
   endShape(CLOSE);
   beginShape();
   vertex(539,224);
   vertex(602,240);
   vertex(657,191);
   vertex(652,181);
   vertex(654,165);
   vertex(664,157);
   vertex(664,169);
   vertex(671,154);
   vertex(670,125);
   vertex(676,124);
   vertex(679,144);
   vertex(691,152);
   vertex(688,180);
   vertex(676,201);
   vertex(605,265);
   vertex(537,250);
   endShape(CLOSE);
}
