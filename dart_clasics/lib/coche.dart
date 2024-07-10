//Declaración de los atributos de la clase
class Coche{
  //Atributos de la clase
  String marca;
  String? modelo;
  String? anio;

  //Contructor
  Coche(this.anio, this.marca, this.modelo);

  Coche.soloMarca(this.marca){
    modelo = 'Desconocido';
    anio = "0";
  }

  //Método
  void mostrarDetalles(){
    print("Marca: $marca, Modelo: $modelo, Año: $anio");
  }

}