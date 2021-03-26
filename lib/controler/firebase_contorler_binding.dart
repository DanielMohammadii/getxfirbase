import 'package:get/get.dart';
import 'package:getx_flutter_2/controler/firebase_controler.dart';

class FirebaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirebaseControler>(() => FirebaseControler());
  }
}
