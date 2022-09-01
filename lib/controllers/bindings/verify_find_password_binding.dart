import 'package:get/get.dart';
import 'package:itnun/controllers/verify_find_password_controller.dart';

class VerifyfindpswdBinding extends Bindings {
  @override
  void dependencies(){
    Get.lazyPut(() => VerifyfindpswdController());
  }
}
