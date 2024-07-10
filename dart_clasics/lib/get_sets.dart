class Rectangulo {
  double _width;
  double _height;

  Rectangulo(this._width, this._height);

  // Getter para el área
  double get area => _width * _height;

  // Setter para la anchura
  set width(double value) {
    if (value > 0) {
      _width = value;
    }
  }

  // Setter para la altura
  set height(double value) {
    if (value > 0) {
      _height = value;
    }
  }
}

void main() {
  var rect = Rectangulo(5, 3);
  print(rect.area); // Imprime 15

  rect.width = 10;
  print(rect.area); // Imprime 30
}
