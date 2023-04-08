PImage imagen;

void setup(){
   background(100);
   size(800,400);
   imagen= loadImage("serrucho.jpeg");
imagen.resize(400,400);
}
void draw(){
  background(255);
  image(imagen,0, 0);//  
  fill(#EDAB1D);
  rect(695,115,65,200,20);
  fill(255);
  rect(712,120,32,190,20,40,30,50);
  fill(240);
  quad(400, 204, 695, 135, 695, 285, 400, 250);
  triangle(408, 251, 415, 270, 424, 253);
  triangle(425,253,430,272,440,255);
  triangle(440,255,445,272,455,257);
  triangle(455,257,460,275,470,258);
  triangle(470,258,475,280,485,260);
  triangle(485,260,492,278,500,262);
  triangle(500,262,505,281,514,263);
  triangle(514,263,522,280,530,265);
  triangle(530,265,535,282,545,267);
  triangle(545,267,552,285,560,269);
  triangle(560,269,568,285,575,271);
  triangle(575,271,581,290,590,273);
  triangle(590,273,595,290,604,274);
  triangle(604,274,610,292,620,276);
  triangle(620,276,625,293,635,278);
  triangle(635,278,640,296,650,280);
  triangle(650,280,658,299,666,282);
  triangle(666,282,672,300,681,283);
  //
  println(mouseX + "," + mouseY);
}
