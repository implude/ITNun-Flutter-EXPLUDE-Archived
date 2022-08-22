import 'package:get/get.dart';
import 'package:itnun/controllers/verify_controller.dart';

class VerifyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerifyController());
  }
}
