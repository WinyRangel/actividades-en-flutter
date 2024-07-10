void main(List<String> args) {
  try{
    int resultado = 10 ~/ 5;
    print('El resultado es $resultado');
  } catch(e, s){
    print("Se produjó una exception: $e");
    print("Su descripción es: $s");
  }finally{
    print('Procura no dividr entre cero');
  }
}