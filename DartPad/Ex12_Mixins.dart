abstract class Animal {}

abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}

mixin Volador {
  void volar() => print('Estoy volando');
  void planear(int distanciaMaxima) => print('Este animal puede planear ${distanciaMaxima}');
  
  void ascender(double alturaMaxima) => print('Este animal puede ascender hasta una altura de ${alturaMaxima} mts. Sobre el nivel del mar');
  
  void descender(double velocidadMax) => print('Este animal puede descender una velocidad de hasta: ${velocidadMax}');   
}

mixin Caminante {
  void caminar() => print('Estoy caminando');
  void correr(int velocidadMaxima) => print('Este animal puede alcanzar una velocidad maxima de ${velocidadMaxima}');
  void trotar(bool puedeTrotar ) => print('Este animal puede trotar? ${puedeTrotar}');
  void saltar(bool puedeSaltar) => print('Este animal puede saltar? ${puedeSaltar}');
}

mixin Nadador {
  void nadar() => print('Estoy nadando');
  void sumergir(int distanciaSumergirMax) => print('Este animal puede sumergirse a una distancia maxima de ${distanciaSumergirMax}');
  void respirar(bool puedeRespirar) => print('Este animal puede respirar? ${puedeRespirar}');
}

class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Volador, Caminante{}
class Gato extends Mamifero with Caminante{}

class Paloma extends Ave with Caminante, Volador {}
class Pato extends Ave with Caminante, Volador,Nadador {}


class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Nadador, Volador{}




void main(){
  final flipper = Delfin();
    print("Instanciando a la clase de Delfin, y accediendo a sus funciones.");
      flipper.nadar();

  print("-------------------------------------------------------------------");
  print("Instanciando a la clase de Murcielago, y accediendo a sus funciones.");
  final chupacabras = Murcielago();
  chupacabras.caminar();
  chupacabras.volar();

  print("-------------------------------------------------------------------");
  print("Instanciando a la clase de Pato, y accediendo a sus funciones.");
  final pekines = Pato();
  pekines.volar();
  
  pekines.planear(100);
  pekines.ascender(30);
  pekines.descender(5);
  pekines.caminar();
  pekines.nadar();

  


  print("-------------------------------------------------------------------");
  print("Instanciando a la clase de delfin risso, y accediendo a sus funciones.");
  final risso = Delfin();
  risso.nadar();
  risso.sumergir(500);
  risso.respirar(false);

  
  

  print("-------------------------------------------------------------------");
  print("Instanciando a la clase de paloma braia, y accediendo a sus funciones.");
  final braia = Paloma();
  braia.caminar();
  braia.correr(80);
  braia.trotar(true);
  braia.saltar(true);
  braia.volar();
  braia.planear(60);
  braia.ascender(36);
  braia.descender(54);

  
  
}

// delfin risso , paloma braia 