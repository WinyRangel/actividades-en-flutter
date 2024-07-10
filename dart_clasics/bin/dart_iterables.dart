void main(List<String> args) {
  List<int> numeros = [1, 2, 3, 4];

  // Recorrer lista imprimiendo los valores
  for (var i in numeros) {
    print(i);
  }

  print("Recorriendo con foreach");
  numeros.forEach((i) => print(i));

  numeros.add(5);
  print(numeros);

  // Borrar valor de lista
  numeros.remove(5);

  // Crear maps
  Map<String, int> verduras = {
    "cilantro": 1,
    "Zanahoria": 2,
    "Apio": 3,
    "Brocoli": 4
  };
  print(verduras);

  verduras.remove("Zanahoria");
  print(verduras);

  // Corrected syntax to add a new key-value pair to the map
  verduras["Papas"] = 5;
  print(verduras);

  print(verduras.isEmpty);
  print(verduras.length);
  print(verduras.keys);
  print(verduras.values);

  for (var verdura in verduras.entries) {
    print("${verdura.key}: ${verdura.value}");
  }
}
