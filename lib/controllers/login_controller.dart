import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final idController = TextEditingController();
  final passwordController = TextEditingController();

  void login() {
    Get.snackbar(
      "성공",
      "로그인에 성공하였습니다",
      backgroundColor: Colors.green,
      colorText: Colors.white,

    );
    Get.offAllNamed("/testmain");

  }
}
