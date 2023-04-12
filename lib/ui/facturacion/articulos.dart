import 'package:flutter/material.dart';
import 'package:gestionclientes_getx/domain/controller/gestionCliente.dart';
import 'package:get/get.dart';

class Articulos extends StatelessWidget {
  const Articulos({super.key});

  @override
  Widget build(BuildContext context) {
    ClienteController clientec = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Articulos'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: MediaQuery.of(context).size.width * 0.08,
            backgroundImage: NetworkImage(clientec.selClienteFinal[0].foto),
          ),
          Text(
            "${clientec.selClienteFinal[0].nombre} ${clientec.selClienteFinal[0].apellido}",
            style: const TextStyle(color: Colors.blue),
          ),
          Text(
            "Edad: ${clientec.selClienteFinal[0].edad}",
            style: const TextStyle(color: Colors.blue),
          ),
          Text(
            "Estado: ${(clientec.selClienteFinal[0].estado) ? 'Activo' : 'Inactivo'}",
            style: const TextStyle(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
