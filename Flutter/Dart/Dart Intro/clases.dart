void main(){
  //Declaracion de clases
  final Hero wolwerine = Hero(name: 'Logan', power: 'Regeneracion');

  print(wolwerine);
  print(wolwerine.name);
  print(wolwerine.power);
}

//Clase en Dart
class Hero {
  //Propiedades
  String name;
  String power;

  Hero({
    required this.name,
    this.power = "Sin Poder"
  });
  //Constructor con inicializacion directa
  //Hero( this.name, this.power);
  //Constructor
  /*Hero(String pName, String pPower) 
  : name = pName,
    power = pPower;*/

  @override
  String toString() {
    return '$name - $power';
  }

}