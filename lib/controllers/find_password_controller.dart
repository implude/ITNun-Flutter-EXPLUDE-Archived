import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FindpswdController extends GetxController {
  final emailController = TextEditingController();

  final emailLiveText = "".obs;

  bool isValid() => isEmailValid(emailLiveText.value);

  bool isEmailValid(String s) => s.isEmail;

  void verifyfindpswd() {
    Get.toNamed("/verifyfindpswd");

  }
}
