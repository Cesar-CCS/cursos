void main(){
  //Este es un map un tipo de dato clave-valor que es flexible y dinamico entre tipo de datos
  // =====IMPORTANTE TIPAR EL MAPA=====
  final Map <String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'habilities': <String>['impostor'],
    'sprites': <int,String> {
      1:'ditto/front.png',
      2:'ditto/back.png'
    }
  };


  print(pokemon);
  print('Name ${ pokemon['name']}');
  print('Sprites ${ pokemon['sprites'] }');
  print('Front ${ pokemon['sprites'][1] }');
  print('Back ${ pokemon['sprites'][2] }');
}