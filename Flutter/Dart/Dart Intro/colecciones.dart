void main(){
  //listado
  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10];


  //Algunos metodos y propiedades de dart
  print('List Original: $numbers');
  print('Length ${ numbers.length }'); //longitud de la lista (numero de elementos)
  print('Index 2: ${ numbers[2] }'); //Valor obtenido por indice
  print('Primer Valor: ${ numbers.first }'); //Metodo para obtener el primer valor
  print('Ultimo valor: ${ numbers.last }'); //Metodo para obtener el ultimo valor

  /*
  Un iterable es una estructura de datos que contiene una secuencia iterable y ordenada
  para el manejo de esta informacion
  Tambien se define como una manera de manejar datos
  Ejemplo de iterable (1, 2, 3, 4)
  */
  final reversedNumbers = numbers.reversed;

  print(reversedNumbers.elementAt(0));
  print('Reversed: ${ numbers.reversed }'); //Lista a Iterable
  print('List: ${ reversedNumbers.toList() }'); //Iterable a Lista

  /*Where es un metodo de filtrado que devuelve un iterable cada que
  el elemento de la lista cumple una condicion*/
  final numbersGreaterThan5 = numbers.where((int num) {
    return num > 5;
  });

  print('>5 ${ numbersGreaterThan5 }');

  /*
  SET: Es una estructura de datos donde no se puede duplicar su valor, cada
  valor contenido en el set es unico en este contenedor de informacion
  Ejemplo de sets: {1, 2, 3}
  */
  print('Set: ${ numbers.toSet() }');

}