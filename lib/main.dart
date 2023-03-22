import 'package:flutter/material.dart';
import 'package:gestionclientes_getx/domain/controller/gestionCliente.dart';
import 'package:gestionclientes_getx/ui/app.dart';
import 'package:get/get.dart';

void main() {
  Get.put(ClienteController());
  runApp(const App());
}
