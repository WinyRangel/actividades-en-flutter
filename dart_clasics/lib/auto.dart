// Definición de la clase Vehiculo
class Vehiculo {
  // Atributos de Vehiculo
  String marca;
  int anio;

  // Constructor de Vehiculo
  Vehiculo(this.marca, this.anio);

  // Método para mostrar información del vehículo
  void mostrarInfo() {
    print('Marca: $marca, Año: $anio');
  }
}
