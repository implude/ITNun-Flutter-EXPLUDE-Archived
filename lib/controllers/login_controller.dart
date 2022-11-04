import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:itnun/constants.dart';

class LoginController extends GetxController {
  final idController = TextEditingController();
  final passwordController = TextEditingController();
  final _storage = Get.find<FlutterSecureStorage>();

  void login() async {
    final body = {
      "user_email": idController.text,
      "user_pw": passwordController.text,
    };

    final response = await post(serverUrl.replace(path: "/auth/login"),
        headers: {"Content-Type": "application/json"}, body: jsonEncode(body));

    final json = jsonDecode(response.body);
    if (json["result"] == "success") {
      final token = json["token"] as String;
      _storage.write(key: "token", value: token);
      Get.snackbar("로그인 성공", "로그인에 성공 하였습니다",
          backgroundColor: appColor, colorText: Colors.white);
      Get.offAllNamed("/main");
    } else {
      Get.snackbar("로그인 실패", "이메일과 비밀번호를 다시 확인 해주세요",
          backgroundColor: Colors.red, colorText: Colors.white);
    }
  }
}
