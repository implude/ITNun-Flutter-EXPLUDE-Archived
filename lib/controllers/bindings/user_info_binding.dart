import 'package:get/get.dart';
import 'package:itnun/controllers/user_info_controller.dart';

class UserInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserInfoController());
  }
}
