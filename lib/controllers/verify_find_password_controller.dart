import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyfindpswdController extends GetxController {
  final inputController = TextEditingController();
  final liveText = "".obs;

  bool isValid() {
    final text = liveText.value;

    return text.isNumericOnly && text.length == 6;
  }

  void makenewpswd() {
    Get.toNamed("/makenewpswd");

  }
}
