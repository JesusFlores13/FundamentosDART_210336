void main() async {
  
  // Muestra un mensaje que indica que el programa ha arrancado
  print('Inicio del programa');
  
  try {
    // Llama de manera asíncrona a httpGet y espera a que termine para seguir
    final value = await httpGet('https://fernando-herrera.com/cursos');
    
    // Si todo va bien, muestra el valor que obtuviste
    print( 'éxito: $value' );
    
  } on Exception catch(err) {
    // Si encuentras una Exception, la atrapamos y mostramos el error
    print('Tenemos una Exception: $err');
    
  } catch (err) {
    // Si pasa otro tipo de error diferente a Exception, lo mostramos aquí
    print('OOP!! algo terrible pasó: $err');
    
  } finally {
    // Esto se ejecuta pase lo que pase, con o sin errores
    print('Fin del try y catch');
  }
  
  // Muestra un mensaje que indica que el programa ha terminado
  print('Fin del programa');
}

// Función que simula una petición HTTP, esperando un poco y luego lanza una Exception
Future<String> httpGet( String url ) async {
  
  // Simula una espera de 1 segundo como si estuvieras esperando una respuesta HTTP
  await Future.delayed( const Duration(seconds: 1));
  
  // Lanza una Exception indicando que falta algo en la URL
  throw Exception('No hay parámetros en el URL');
  
}
