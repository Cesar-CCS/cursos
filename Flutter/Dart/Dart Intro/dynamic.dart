void main () {
  // dynamic expresa que puede recibir cualquier tipo de dato
  // valor default de dynamic == null

  dynamic errorMessage = 'Hola'; //A pesar de aignarse como string su tipo de dato siempre sera dynamic
  errorMessage = true;
  errorMessage = [1,2,3];
  errorMessage = { 1, 2, 3, 4, 5};
  errorMessage = () => true;
  print(errorMessage);
  //Hay que saber como utilizarlo debiido a que puede recibir un valor inesperado

}