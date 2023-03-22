import 'package:flutter/material.dart';
import 'package:gestionclientes_getx/ui/auth/login.dart';
import 'package:gestionclientes_getx/ui/facturacion/articulos.dart';
import 'package:gestionclientes_getx/ui/facturacion/clientes.dart';
import 'package:gestionclientes_getx/ui/facturacion/facturar.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Manejo de estado',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const Clientes(),
      routes: {
        "/clientes": (context) => const Clientes(),
        "/articulos": (context) => const Articulos(),
        "/login": (context) => const Login(),
        "/facturar": (context) => const Facturar(),
      },
    );
  }
}
