import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FindPasswordController extends GetxController {
  final emailController = TextEditingController();

  final emailLiveText = "".obs;

  bool isValid() => isEmailValid(emailLiveText.value);

  bool isEmailValid(String s) => s.isEmail;

  void verifyFindPassword() {
    Get.toNamed("/password/verifyFind");
  }
}
