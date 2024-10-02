void main() {
  // Constructores Nombrados
  // Caso de prueba 1 Enviado todos

  final juanPerez = Person(
    ID: 250,
    cortesyTitle: "Sr",
    name: "Juan Manuel",
    firstLastname: "Perez",
    secondLastname: "Rodriguez",
    gender: "Hombre",
    bloodGroup: "O+",
    photoURL: "images/clients/250.png",
    curp: "JOVJ030513HPLLLSA7",
    birthdate: DateTime(1992, 8, 5),
    isActive: true,
    createdAt: DateTime(2024, 9, 30, 11, 5, 16),
  );

  print(juanPerez);
}

class Person {
  int ID;
  String? cortesyTitle;
  String name;
  String firstLastname;
  String? secondLastname;
  String gender;
  String bloodGroup;
  String? curp;
  DateTime birthdate;
  bool isActive;
  DateTime createdAt;
  DateTime? updatedAt;
  String? photoURL;

  Person({
    required this.ID,
    this.cortesyTitle,
    required this.name,
    required this.firstLastname,
    this.secondLastname,
    required this.gender,
    required this.bloodGroup,
    this.photoURL,
    this.curp,
    required this.birthdate,
    this.isActive = true,
    DateTime? createdAt,
    this.updatedAt,
  }) : createdAt = createdAt ?? DateTime.now();

  @override
  String toString() {
    final String formattedBirthDate =
        "${birthdate.day.toString().padLeft(2, '0')}/"
        "${birthdate.month.toString().padLeft(2, '0')}/"
        "${birthdate.year}";

    final String formattedCreatedDate =
        "${createdAt.day.toString().padLeft(2, '0')}/"
        "${createdAt.month.toString().padLeft(2, '0')}/"
        "${createdAt.year} "
        "${createdAt.hour.toString().padLeft(2, '0')}:"
        "${createdAt.minute.toString().padLeft(2, '0')}:"
        "${createdAt.second.toString().padLeft(2, '0')}";

    curp ??= "No registro";
    if (curp == "") curp = "No registrado";

    String status = isActive ? "Activo" : "Inactivo";

    return """
    -----------------------------------------------------------
    DATOS DE LA PERSONA
    -----------------------------------------------------------
    ID: $ID
    Nombre: $name $firstLastname ${secondLastname ?? ""}
    Género: $gender
    Grupo Sanguíneo: $bloodGroup
    Fecha de Nacimiento: $formattedBirthDate
    Foto: $photoURL
    CURP: $curp
    Estatus: $status
    Fecha de Registro: $formattedCreatedDate
    -----------------------------------------------------------
    """;
  }
}
