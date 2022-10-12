import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:itnun/models/space_info.dart';

class SpaceSearchController extends GetxController {
  final searchController = TextEditingController();
  late final Future<List<SpaceInfo>> spaces = Future(() async {
    if (Get.arguments != null) return Get.arguments;
    final text = await rootBundle.loadString("assets/res/space.json");

    return (jsonDecode(text) as Iterable)
        .map((e) => SpaceInfo.fromJson(e))
        .toList();
  });
}
