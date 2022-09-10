import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserInfoController extends GetxController {
  final jobController = TextEditingController();
  final departmentController = TextEditingController();
  final isPreparing = false.obs;
  final stageValue = Rxn<String>();

  void next() {
    Get.snackbar(
      "준비",
      "중입니다",
      backgroundColor: Colors.black,
      colorText: Colors.white,
    );
    Get.offAllNamed("/");
  }
}
