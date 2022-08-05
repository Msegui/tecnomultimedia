void personaje(int posYPJ) {
  if (pantalla == 1) {
    posXPJglobal++;
    salta = true;
    aterriza=false;
  }
  if (salta) {
    posYPJ --;
    aterriza=true;
  } else if (aterriza) {
    salta=false;
    posYPJ ++;
  }

  posYPJglobal= posYPJ;
}
void DibujarPersonaje() {
  rect(posXPJglobal, 0, 0, 0);
}
void Saltar() {
}
