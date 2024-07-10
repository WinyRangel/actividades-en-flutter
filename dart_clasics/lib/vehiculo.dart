class Vehiculo{
  String marca;
  int anio;

  Vehiculo(this.anio, this.marca);

  void mostrarDetalles(){
    print("Marca: $marca, Año: $anio");
  }
}