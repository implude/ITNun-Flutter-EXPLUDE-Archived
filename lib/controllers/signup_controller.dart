import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final emailLiveText = "".obs;
  final passwordLiveText = "".obs;
  final passwordAgainLiveText = "".obs;

  bool isValid() =>
      isEmailValid(emailLiveText.value) &&
      isPasswordValid(passwordLiveText.value) &&
      isPasswordAgainValid(passwordAgainLiveText.value);

  bool isEmailValid(String s) => s.isEmail;

  bool isPasswordValid(String s) => s.length >= 8;

  bool isPasswordAgainValid(String s) => s == passwordController.text;

  void signup() {
    Get.toNamed("/verify");
  }
}
