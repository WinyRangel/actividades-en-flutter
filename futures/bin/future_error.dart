void main(List<String> args) {
  Future((){
    throw Exception('Hubo un error');
  }).then((_){
    print("Éxito!!");
  }).catchError((error){
    print('Error: $error');
  });
}