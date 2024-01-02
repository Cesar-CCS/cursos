void main() {
  final mySquare = Square(side: -5);
  //mySquare.side = 5;

  print('Side: ${ mySquare.side}');
  print('Area ${ mySquare.calculateArea()}');
  //print('Side: ${ mySquare.side }');
}

class Square {
  double _side; // Propiedad Privada

  Square({
    required double side
  }): assert(side >= 0, 'side must be > 0'), //Valida que se reciba el dato esperado
  _side = side;

  double get area{
    return _side * _side;
  }

  double get side => _side;

  set side(double value) {
    print('Setting new $value');
    if ( value <= 0 ) throw 'Value must be > 0';// Detiene el funcioamiento del programa si no recibe lo esperado

    _side = value;
  }

  double calculateArea() {
    return _side * _side;
  }
}