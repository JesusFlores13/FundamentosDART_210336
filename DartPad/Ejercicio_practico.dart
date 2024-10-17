// Función principal que ejecuta el programa
void main() {
  // Se crea una instancia del sistema de registro
  SistemaRegistro sistema = SistemaRegistro();

  // Caso 1: Se crea y registra un nuevo miembro "Sofía"
  Miembro sofia = Miembro(
    titulo: 'Arq.',
    nombre: 'Sofía',
    primerApellido: 'Martínez',
    segundoApellido: 'González',
    genero: 'Femenino',
    grupoSanguineo: 'AB+',
    fechaNacimiento: DateTime(1993, 8, 19),
    curp: 'SOMG930819MDFLRS09',
    fueTrabajador: false,
    tieneMembresia: false,
    fechaRegistro: DateTime(2020, 1, 15),
  );

  // Se registra a Sofía en el sistema
  sistema.registrarMiembro(sofia);

  // Caso 2: Se crea y registra un miembro que fue trabajador "Luis"
  Miembro luis = Miembro(
    titulo: 'Lic.',
    nombre: 'Luis',
    primerApellido: 'Torres',
    segundoApellido: 'Rodríguez',
    genero: 'Masculino',
    grupoSanguineo: 'O-',
    fechaNacimiento: DateTime(1985, 11, 30),
    curp: 'LUTO851130HDFRRL02',
    fueTrabajador: true,
    tieneMembresia: true,
    fechaRegistro: DateTime(2022, 3, 10),
  );

  // Se registra a Luis en el sistema
  sistema.registrarMiembro(luis);

  // Caso 3: Se crea y registra un miembro "Laura" con membresía cancelada
  Miembro laura = Miembro(
    titulo: 'Mtra.',
    nombre: 'Laura',
    primerApellido: 'Fernández',
    segundoApellido: 'Morales',
    genero: 'Femenino',
    grupoSanguineo: 'B-',
    fechaNacimiento: DateTime(1978, 2, 14),
    curp: 'LAFM780214MDFRRN07',
    fueTrabajador: false,
    tieneMembresia: false,
    fechaRegistro: DateTime(2019, 7, 22),
  );

  // Se registra a Laura en el sistema
  sistema.registrarMiembro(laura);

  // Se listan todos los miembros registrados en el sistema
  sistema.listarMiembros().forEach((miembro) => print(miembro));

  // Cancelar la membresía de un miembro llamado "Pedro"
  laura.cancelarMembresia();

  // Eliminar al miembro "Pedro" del sistema
  sistema.eliminarMiembro(laura.nombre, laura.primerApellido);
  
  // Se muestra la lista de miembros después de la eliminación
  print('Lista de miembros después de la eliminación:');
  sistema.listarMiembros().forEach((miembro) => print(miembro));
}

// Clase abstracta que representa una persona con atributos básicos
abstract class Persona {
  String titulo; // Título profesional o honorífico de la persona
  String nombre; // Nombre de la persona
  String primerApellido; // Primer apellido
  String segundoApellido; // Segundo apellido
  String genero; // Género de la persona
  String grupoSanguineo; // Grupo sanguíneo
  DateTime fechaNacimiento; // Fecha de nacimiento
  String curp; // CURP (Código Único de Registro de Población)

  // Constructor para inicializar una instancia de Persona
  Persona({
    required this.titulo,
    required this.nombre,
    required this.primerApellido,
    required this.segundoApellido,
    required this.genero,
    required this.grupoSanguineo,
    required this.fechaNacimiento,
    this.curp = 'No aplica', // Si no se proporciona CURP, por defecto es "No aplica"
  });

  // Sobrescribir el método toString para mostrar los datos de la persona
  @override
  String toString() {
    return '''
    --------------------------------------------------------------
    DATOS DE LA PERSONA
    --------------------------------------------------------------
    Título: $titulo
    Nombre completo: $nombre $primerApellido $segundoApellido
    CURP: $curp
    Género: $genero, Grupo Sanguíneo: $grupoSanguineo
    Fecha de nacimiento: $fechaNacimiento
    --------------------------------------------------------------
    ''';
  }
}

// Clase Miembro que extiende Persona y agrega datos adicionales
class Miembro extends Persona {
  bool fueTrabajador; // Indica si la persona fue trabajadora
  bool tieneMembresia; // Indica si la persona tiene membresía activa
  DateTime fechaRegistro; // Fecha en que el miembro se registró

  // Constructor que recibe todos los datos del miembro
  Miembro({
    required String titulo,
    required String nombre,
    required String primerApellido,
    required String segundoApellido,
    required String genero,
    required String grupoSanguineo,
    required DateTime fechaNacimiento,
    String curp = 'No aplica',
    required this.fueTrabajador,
    required this.tieneMembresia,
    required this.fechaRegistro,
  }) : super(
          titulo: titulo,
          nombre: nombre,
          primerApellido: primerApellido,
          segundoApellido: segundoApellido,
          genero: genero,
          grupoSanguineo: grupoSanguineo,
          fechaNacimiento: fechaNacimiento,
          curp: curp,
        );

  // Método para cancelar la membresía de un miembro
  void cancelarMembresia() {
    tieneMembresia = false;
    print('Se ha cancelado la membresía del miembro.');
  }

  // Sobrescribir el método toString para mostrar también datos de membresía
  @override
  String toString() {
    return '''
    ${super.toString()}
    --------------------------------------------------------------
    DATOS DEL MIEMBRO
    --------------------------------------------------------------
    Fue trabajador: $fueTrabajador
    Tiene membresía: $tieneMembresia
    Fecha de registro: $fechaRegistro
    --------------------------------------------------------------
    ''';
  }
}

// Interfaz que define métodos para gestionar los miembros
abstract class RegistroMiembro {
  void registrarMiembro(Miembro miembro); // Método para registrar un miembro
  void eliminarMiembro(String nombre, String primerApellido); // Método para eliminar un miembro
  List<Miembro> listarMiembros(); // Método para listar los miembros registrados
}

// Clase que implementa la interfaz RegistroMiembro
class SistemaRegistro implements RegistroMiembro {
  // Lista que almacena los miembros registrados
  List<Miembro> miembros = [];

  // Implementación del método para registrar un miembro
  @override
  void registrarMiembro(Miembro miembro) {
    miembros.add(miembro); // Añadir el miembro a la lista
    print('Miembro registrado: ${miembro.nombre} ${miembro.primerApellido}');
  }

  // Implementación del método para eliminar un miembro por nombre y primer apellido
  @override
  void eliminarMiembro(String nombre, String primerApellido) {
    miembros.removeWhere((m) =>
        m.nombre == nombre && m.primerApellido == primerApellido); // Remover el miembro
    print('Miembro llamado $nombre $primerApellido ha sido eliminado.');
  }

  // Implementación del método para listar todos los miembros registrados
  @override
  List<Miembro> listarMiembros() {
    return miembros; // Devuelve la lista de miembros
  }
}
