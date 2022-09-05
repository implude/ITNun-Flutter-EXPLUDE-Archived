import 'package:get/get.dart';
import 'package:itnun/controllers/find_password_controller.dart';

class FindpswdBinding extends Bindings {
  @override
  void dependencies(){
    Get.lazyPut(() => FindpswdController());
  }
}
