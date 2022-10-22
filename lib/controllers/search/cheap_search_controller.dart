import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:itnun/models/cheap_market_info.dart';

class CheapSearchController extends GetxController {
  final searchController = TextEditingController();

  late final Future<List<CheapMarketInfo>> markets = Future(() async {
    if (Get.arguments != null) return Get.arguments;
    final text = await rootBundle.loadString("assets/res/cheap.json");

    return (jsonDecode(text) as Iterable)
        .map((e) => CheapMarketInfo.fromJson(e))
        .toList();
  });
}
