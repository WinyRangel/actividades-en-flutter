
import 'dart:io';

void main(List<String> arguments) {
  //declarar variables
  int contador;
  String nombre;
  double nota;
  bool esAdulto;

  //asignar valores a las variables
  contador = 0;
  nombre = "Maria";
  nota = 8.5;
  esAdulto = true;

  //Declara una condicional if
  if(nota > 8){
    print("Aprabado");
  }else{
    print("Reprobado]");
  }
  //Switch múltiple
  switch(nota.ceil()){
    case 8:
    case 9:
    print("B");
    break;
    case 10:
    print("A");
    default:
    print("Calificación no valida");
  }

  //Ciclo while
  while(contador < 5){
    print("El contador tiene el valor de $contador");
    contador++;
  }

  //Otro while
  int numero;

  print("Teclear número");
  numero = int.parse(stdin.readLineSync()!);
  int i = 1;
  while(i <= 10){
    print("$numero x $i = ${numero*i}");
    i++;
  }

  //ciclo for
  for(var i = 0; i<=1; i++){
    print("$numero x $i = ${numero*i}");
  }

  //break
  for(var i = 0; i<=9; i++){
    if(i==7){
      break;
    }
    print(i);
  }

  //do while
  do{
    print(contador);
    contador++;
  }while(contador < 10);
}
