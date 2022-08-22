import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyController extends GetxController {
  final inputController = TextEditingController();
  final liveText = "".obs;

  void verify() {
    Get.toNamed("/userInfo");
  }

  bool isValid() {
    final text = liveText.value;

    return text.isNumericOnly && text.length == 6;
  }
}
