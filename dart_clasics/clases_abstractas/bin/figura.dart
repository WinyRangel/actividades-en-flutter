abstract class Figura{
  double calcularArea();
}

class Circulo extends Figura{
  //* mplementar método
  double radio;
  Circulo(this.radio);
  double calcularArea(){

    //Pi * Radio *Radio
    return 3.14;
  }

}

class Rectangulo extends Figura{
    //* Implementar método
    double ancho, alto;
    Rectangulo(this.alto, this.ancho);
  double calcularArea(){
    //ancho*altura
    return ancho*alto;
  }
}

void main(List<String> args) {
  var c = Circulo(13);
  var r = Rectangulo(3, 7);
  print('Área del círculo ${c.calcularArea()}');
  print('Área del círculo ${r.calcularArea()}');
}