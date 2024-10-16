void main() {
  
  // Llama a la función emitNumber(), que devuelve un Stream asíncrono.
  // Escucha lo que va emitiendo el Stream y muestra cada valor.
  emitNumber().listen( (int value) {
    print( 'Valor del Stream: $value' );
  });
}


Stream<int> emitNumber() async* {
  
  // Lista de valores que el Stream va a soltar
  final valuesToEmit = [1, 2, 3, 4, 5];
  
  // Recorre cada valor en la lista
  for( int i in valuesToEmit ) {
    
    // Espera 1 segundo antes de soltar el siguiente valor
    await Future.delayed( const Duration(seconds: 1));
    
    // Emite el valor 'i' al Stream
    yield i;
  }
}
