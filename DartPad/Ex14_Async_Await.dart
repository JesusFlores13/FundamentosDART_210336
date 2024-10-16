void main() async {
  
  // Muestra que el programa acaba de arrancar
  print('Inicio del programa');
  
  try {
    // Espera a que se complete la función httpGet y guarda el resultado en 'value'
    final value = await httpGet('https://fernando-herrera.com/cursos');
    
    // Si todo sale bien, muestra el valor que te dio httpGet
    print( value );
    
  } catch (err) {
    // Si algo falla dentro del try, aquí atrapamos el error y lo mostramos
    print('Tenemos un error: $err');
  }
  
  // Indica que el programa ya terminó
  print('Fin del programa');
}

// Función que finge hacer una petición HTTP a la URL que le pases
Future<String> httpGet( String url ) async {
  
  // Simula que estamos esperando 1 segundo para obtener la respuesta
  await Future.delayed( const Duration(seconds: 1));
  
  // Simula que algo salió mal en la petición y lanza un error
  throw 'Error en la petición';

}
