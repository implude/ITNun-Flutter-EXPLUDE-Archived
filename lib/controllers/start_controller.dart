import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:itnun/constants.dart';

class StartController extends GetxController {
  late final _storage = Get.find<FlutterSecureStorage>();

  late final checkToken = Future(() async {
    final token = await _storage.read(key: "token");
    if (token == null) return false;

    final response = await post(
      serverUrl.replace(path: "/auth/myinfo"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"token": token}),
    );

    final json = jsonDecode(response.body);

    return json["result"] == "success";
  });
}
