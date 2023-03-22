import 'package:gestionclientes_getx/domain/models/cliente.dart';
import 'package:get/get.dart';

class ClienteController extends GetxController {
  Rx<List<Cliente>> listaLocal = Rx<List<Cliente>>([]);
  final contador = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    listaLocal.value = listaclientes;
    super.onInit();
  }

  List<Cliente> get listapublica => listaLocal.value;
  int get total => contador.value;

  aumentar() {
    contador.value++;
  }
}
