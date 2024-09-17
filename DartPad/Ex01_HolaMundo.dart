void main(){
  // Declarando una variable generica pra almacenar mi nombre
  
  var myName = 'Jesus';
  String myLastName = 'Flores';
  final int myDNI = 210336;
  late final int myAge;
  
  //Corregir mi nombre
  //myName = "Jesus F";
  //myDNI= 210336; Esto ocasiono un error porque la variable esta definida como final y no puede actualizar su valor 
  
  print ('Hola $myName $myLastName, tu matricula es $myDNI, y tu edad aun no la conozco, por que no se cuando naciste.');


//Interpolando el valor de las variables con metodos de manipulacion o transformacion 

print('\Hola, ${myName.toUpperCase()} ${myLastName.toUpperCase()}, tu matricula es $myDNI, y tu edad aun no la conozco, por que no se cuando naciste');
}