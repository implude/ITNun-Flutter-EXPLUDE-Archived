import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/models/signup_info.dart';
import 'package:itnun/models/user_info.dart';

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

  void signup() async {
    final userInfo = (await Get.toNamed("/verify")) as UserInfo?;
    if (userInfo == null) return;

    final signupInfo = SignupInfo(
        email: emailController.text,
        password: passwordController.text,
        job: userInfo.job,
        stage: userInfo.academic,
        department: userInfo.specialization,
        preparing: userInfo.preparing);

    final response = await post(serverUrl.replace(path: "/auth/signup"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(signupInfo));

    final json = jsonDecode(response.body);

    if (json["result"] == "success") {
      Get.offAllNamed("/");
      Get.snackbar("회원가입", "회원가입에 성공 하였습니다",backgroundColor: appColor,colorText: Colors.white);
    } else {
      final message = json["message"];
      Get.snackbar("회원가입", "회원가입에 실패 하였습니다\n$message",backgroundColor: Colors.red,colorText: Colors.white);
    }
  }
}
