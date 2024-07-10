void main(List<String> args) {
  print("Hola mundo");

  Future((){
    return "Hola mundo";
  }).then((resultado){
    print (resultado);
    });
  print("Fin del programa");
}