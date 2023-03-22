class Cliente {
  late String nombre;
  late String apellido;
  late int edad;
  late bool estado;
  late String foto;

  Cliente(
      {required this.nombre,
      required this.apellido,
      required this.edad,
      required this.estado,
      required this.foto});

  factory Cliente.crear(Map<String, dynamic> jsonMap) {
    return Cliente(
        nombre: jsonMap['nombre'],
        apellido: jsonMap['apellido'],
        edad: jsonMap['edad'],
        estado: jsonMap['estado'],
        foto: jsonMap['foto']);
  }
}

Map<String, dynamic> cli = {
  "nombre": "Alexander",
  "apellido": "Vacca",
  "edad": 18,
  "estado": true,
  "foto":
      "https://cdn.pixabay.com/photo/2016/11/21/12/42/beard-1845166_1280.jpg"
};

List<Cliente> listaclientes = [
  Cliente.crear(cli),
  Cliente.crear(cli),
  Cliente.crear(cli),
];
