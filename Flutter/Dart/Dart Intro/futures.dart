void main() async{

  print("Inicio del Programa");
  //Await indica al programa que tiene que esperar el resultado para continuar
  //con el mantenimiento
  try {
    final value = await httGet("https://fernando-herrera.com/Cursos");
    print('Exitoso $value');
  } on Exception {
    print('Tenemos una Exceotion');
  }catch (err) {
    print("OOPS! algo terrible pasó: $err");
  } finally {
    print('Fin del try y catch');
  }

  print("Fin del programa");

}

//Siempre especificar el tipo de dato que recibe en una funcion(en este caso future)
//Future hace referencia a que recibiria un resultado o un error
//Con la palabra reservada ==async== se establece que una funcion o metodo retornara un future
//async* == regresa un stream
Future<String> httGet( String url ) async {

  await Future.delayed( const Duration(seconds: 1) );

  throw Exception('No hay parametros en el URL');

  //return "Tenemos un valor de la peticion";

}