void main(){
  print(greetEveryone());
  print(greetinPeople());
  print("Suma: ${ addTwoNumbers(10, 30)}");
  print("Suma con funcion lamda: ${ addTwoNumbersLamda(40, 40) }");
  print(greetPerson(name: 'Cesar', message: "Hola gran "));
}

//Funcion normal
String greetEveryone() {
  return "Hello everyone";
}

//funcion lamda (retorna inmediatamente un valor)
String greetinPeople() => "Hello people";

int addTwoNumbers(int a, int b) {
  return a + b;
}

int addTwoNumbersLamda(int a, int b) => a + b;

//Funciones con valores opcionales
int NumbersOptional(int a, /*[ int? b ]*/ [ int b = 0 ]) {
  //b = b ?? 0;

  return a + b;
}

//Funciones con parametros por nombre
String greetPerson({required String name, String message ='Hola, '}) {
  return '${message}${name}';
}