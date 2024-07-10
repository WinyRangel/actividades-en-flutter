//Archivo future_delayed.dart

void main(List<String> args) {
  print('Inicio del programa');

  Future.delayed(Duration(seconds: 2), (){
    return "Hola despues de 2 segundos";
  }).then((resultado){
    print(resultado);
  });
}