import 'package:gestionclientes_getx/domain/models/cliente.dart';
import 'package:get/get.dart';

class ClienteController extends GetxController {
  Rx<List<Cliente>> listaLocal = Rx<List<Cliente>>([]);
  Rx<List<Cliente>> selCliente = Rx<List<Cliente>>([]);
  final contador = 0.obs;
  final itemSel = 999999.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    listaLocal.value = listaclientes;
    super.onInit();
  }

  List<Cliente> get listapublica => listaLocal.value;
  List<Cliente> get selClienteFinal => selCliente.value;
  int get itemSelFinal => itemSel.value;
  int get total => contador.value;

  aumentar() {
    contador.value++;
  }

  seleccionarCliente(int i) {
    print(i);
    if (selCliente.value.isEmpty) {
      selCliente.value.add(listaLocal.value[i]);
    } else {
      selCliente.value[0] = listaLocal.value[i];
    }
    itemSel.value = i;
    selCliente.refresh();
    print(selCliente.value[0].nombre);
    print(selCliente.value.length);
  }
}
