import 'package:dart_clasics/coche.dart';
void main(List<String> args) {
  var miCoche = Coche("Chevrolet", "Chevy Pickup","2024");
  miCoche.mostrarDetalles();

  var otroCoche = Coche("Nissan", "Sentra","2006");
  otroCoche.mostrarDetalles();

  var miCamioneta = Coche("Chevrolet", "Suburban","2024");
  miCamioneta.mostrarDetalles();
}