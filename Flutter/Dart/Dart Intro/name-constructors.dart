void main(){
//Mapeo de Json 
  final Map<String, dynamic> rawJson = {
    'name': 'Spiderman',
    'power': 'Trepar paredes ',
    'isAlive': true
  };

  final ironman = Hero.fromJson(rawJson);

 /* final ironman = Hero(
    isAlive: false, 
    power: 'Money', 
    name: 'Tony');*/

  print(ironman);
}

class Hero {
  String name;
  String power; 
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });

  //Mapeo de Jason
  Hero.fromJson(Map<String, dynamic> json) 
  :name = json['name'] ?? 'No name found',
  power = json['power'] ?? 'No power found',
  isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  String toString() {
    return '$name, $power, isAlive: ${ isAlive ? 'YES!':'Nope' }';
  }
}