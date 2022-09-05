import 'package:get/get.dart';
import 'package:itnun/controllers/make_new_password_controller.dart';

class Makenewpswdbinding extends Bindings {
  @override
  void dependencies(){
    Get.lazyPut(() => MakenewpswdController());
  }
}
