void main() {
  
  // Llama a la función emitNumbers() que devuelve un Stream y escucha lo que va emitiendo.
  // Cada vez que el Stream suelta un valor, se ejecuta esta función anónima que lo imprime.
  emitNumbers().listen( (value) {
    print('Valor del Stream: $value');
  });
  
}


Stream<int> emitNumbers() {
  
  // Retorna un Stream que va soltando números de vez en cuando.
  // Stream.periodic genera un nuevo valor cada 2 segundos (por la Duration).
  return Stream.periodic( const Duration(seconds: 2), (value) {
    
    // Cada vez que el Stream emite algo, devuelve el número actual.
    // Aquí, 'value' es cuántas veces ha iterado (0, 1, 2, etc.).
    return value;
    
  // Con .take(5) limitamos el Stream a solo emitir los primeros 5 valores.
  }).take(5);
  
}
