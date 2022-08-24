import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final idController = TextEditingController();
  final passwordController = TextEditingController();

  void login() {
    Get.toNamed("/notification");

  }
}
