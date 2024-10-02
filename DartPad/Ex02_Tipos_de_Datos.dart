void main(){
  //Practica 04: tipos de Datos en DART
  
  //Cadenas (String)
  final String pokemon= "Pikachu";
  
  //Enteros(Int)
  final int hp = 100;
  
  //Boleano (Boolean)
  final bool isAlive =true;
  
  //Listas (List)
  final abilities =["impact-Trueno", "Colade Hierro","Ataque Rapido",];
  final sprites = <String>["Pikachu_front.png", "Pikachu_cack.png"];
  
  print (""" El pokemon que elegiste es: $pokemon
  -------------------------------------------------
  Las estadisticas de $pokemon son:
  vida (HP): $hp
  Estatusde vida: $isAlive 
  Imagenes: $sprites
  """);
}