boolean ColisionBoton (float mX, float x, float y) {
  if (mX > x && mX < x + y) {
    return true;
  } else {
    return false;
  }
}
void Botones(String forma, float x, float y, float tam, int siguiente, String textoIndicatorio) {
  push();
  if (forma == "circ") {
    fill(120,120,120);
    circle(x, y-3, tam+10);
    fill(0);
    text(textoIndicatorio, x, y);
    if (mousePressed && on) {
      if (dist(mouseX, mouseY, x, y-3) < tam / 2) {
        pantalla = siguiente;
        on = false;
      }
    }
  } else if (forma == "cuad") {
    fill(0,255,0);
    square(x-35, y-40, tam);
    fill(0,0,255);
    text(textoIndicatorio, x, y);
    if (mousePressed && on) {
      if (mouseX > x -tam/2
        && mouseX < x + tam/2
        && mouseY > y - tam/2
        && mouseY < y + tam/2) {
        pantalla = siguiente;
        on = false;
      }
    }
  }
  pop();
}
