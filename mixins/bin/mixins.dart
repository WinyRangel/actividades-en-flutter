//Crear un mixin
mixin Volador{
  void volar(){
    print("Estoy volando");
  }
}
mixin Corredor{
  void correr (){
    print("Estoy corriendo");
  }
}


class Pajaro with Volador, Corredor{

}

void main(List<String> args) {
  var pajaro = Pajaro();
  pajaro.correr();
  pajaro.volar();
}