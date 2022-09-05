import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MakePasswordController extends GetxController {
  final passwordController = TextEditingController();

  final passwordLiveText = "".obs;
  final passwordAgainLiveText = "".obs;

  bool isValid() =>
      isPasswordValid(passwordLiveText.value) &&
      isPasswordAgainValid(passwordAgainLiveText.value);

  bool isPasswordValid(String s) => s.length >= 8;

  bool isPasswordAgainValid(String s) => s == passwordController.text;

  void login() {
    Get.toNamed("/");
  }
}
