import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyController extends GetxController {
  final inputController = TextEditingController();
  final liveText = "".obs;

  void verify() async {
    if (inputController.text != "220914") {
      Get.snackbar("인증", "인증에 실패 하였습니다",backgroundColor: Colors.red,colorText: Colors.white);
      return;
    }
    Get.back(result: await Get.toNamed("/userInfo"));
  }

  bool isValid() {
    final text = liveText.value;

    return text.isNumericOnly && text.length == 6;
  }
}
