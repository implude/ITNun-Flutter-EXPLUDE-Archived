import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/models/policy_info.dart';

class PolicySearchController extends GetxController {
  final searchController = TextEditingController();
  late final _token = Get.find<FlutterSecureStorage>().read(key: "token");

  late final Future<List<PolicyInfo>> policies = Future(() async {
    if (Get.arguments != null) return Get.arguments;
    final response = await post(
        serverUrl.replace(path: "/policy/get_all_policy"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"token": await _token}));

    final json = jsonDecode(utf8.decode(response.bodyBytes));

    return (json["policy"] as List).map((e) => PolicyInfo.fromJson(e)).toList();
  });
}
