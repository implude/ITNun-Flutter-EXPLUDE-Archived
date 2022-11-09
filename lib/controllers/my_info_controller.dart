import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/models/user.dart';

class MyInfoController extends GetxController {
  late final _token = Get.find<FlutterSecureStorage>().read(key: "token");

  late final user = _getUser().then((value) => value.obs);

  Future<User> _getUser() async {
    final url = serverUrl.replace(path: "/auth/myinfo");

    final response = await post(
      url,
      body: jsonEncode({"token": await _token}),
      headers: {"Content-Type": "application/json"},
    );

    final userInfo = jsonDecode(response.body)["user_info"];

    return User.fromJson(userInfo);
  }

  Future<void> reload() async {
    (await user).value = await _getUser();
  }
}
