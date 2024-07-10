//Importa un archivo que está en lib
import 'package:dart_clasics/dart_function.dart';
//Declarar función principal
void main(List<String> args) {
  for(var i=0; i<=10; i++){
  saludar();
  }

  var funcionSaludo = saludar;
  var i=0;
  while(i<10){
    funcionSaludo();
    i++;
  }

  ejecutarOperacion(10, 20, sumar);
  ejecutarOperacion(20, 10, restar);
  ejecutarOperacion(20, 10, multiplicar);
  ejecutarOperacion(20, 10, dividir);


  var duplicar = crearMultiplicador(2);
  var triplicar = crearMultiplicador(3);

  print(duplicar(5));
  print(triplicar(20));

  var suma = (int a, int b){
    return a + b;
  };
  print("La suma es ${suma(5,6)}");
  var notas = [10,8,9,7];
  notas.forEach((n){ print(n);});
  print("Fecha: ");
  notas.forEach((n)=>print(n));

  var sumaNotas = 0;
  notas.forEach((n)=>sumaNotas+=n);
  var promedio = sumaNotas/notas.length;
  print("El promedio es: $promedio");
}
