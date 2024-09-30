void main(){
  //clase con parametros posicionales los parametros deben respetar su orden para ser asignados en la propiedad
  final Hero wolverine = Hero('Logan', 'Regeneracion');
  //Clase con parametros no posicionales los puedo mandar en desorden
  final xmen = Team(type: "Heroes", name:"S-Men", );
  final brotherhood = Team(name:"The Brtherhood of Evil Mutants");

  //print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
  print("------------------------------------------------------");
  print(xmen);
  print(xmen.name);
  print(xmen.type);
  // Invocando al metodo rescrito con @uverride 
  print(xmen.toString());
  print("------------------------------------------------------");
  //print(brotherhood);
  print(brotherhood.name);
  print(brotherhood.type);
  // Invocando al metodo rescrito con @uverride 
  print(brotherhood.toString());
  
  
}

class Hero {

String name;
String power;

Hero( String pName, String pPower )

  : name = pName, power = pPower;

}


class Team {

String name;
String type;

  Team( {
    required this.name,
    this.type="No definido" });
    
    @override
  String toString()
  {
    return 'Grupo: $name, Tipo: $type';
  }
}