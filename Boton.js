class Boton {
   constructor(forma,  x,  y, tam, siguiente, textoIndicatorio){
  this.forma= forma
  this.x = x
      this.y = y
      this.tam = tam
 this.siguiente= siguiente
 this.textoIndicatorio=textoIndicatorio
   }
 ColisionBoton () {
  if (mX > x && mX < x + y) {
    return true;
  } else {
    return false;
  }
}
formaBotones() {
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
      if (mouseX > x -tam/2  && mouseX < x + this.tam/2 && mouseY > y -this.tam/2 && mouseY < y +this.tam/2) {
        pantalla = siguiente;
        on = false;
      }
    }
  }
 pop();
}

mouseMoved(){
boolean= on
  on=true
}
}
   
