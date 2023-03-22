import 'package:flutter/material.dart';
import 'package:gestionclientes_getx/domain/controller/gestionCliente.dart';
import 'package:get/get.dart';

class Clientes extends StatelessWidget {
  const Clientes({super.key});

  @override
  Widget build(BuildContext context) {
    ClienteController clientec = Get.find();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Clientes'),
        ),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemCount: clientec.listapublica.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                  child: Text(clientec.listapublica[index].nombre),
                ),
              );
            }));
  }
}
