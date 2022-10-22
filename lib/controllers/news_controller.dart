import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/models/news_data.dart';

class NewsController extends GetxController {
  late final _token = Get.find<FlutterSecureStorage>().read(key: "token");
  final _regex = RegExp(r'(.+) 기자  (.+)');

  Future<List<NewsData>> fetchNewsData() async {
    final response = await post(
      serverUrl.replace(path: "/news/check_news"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"token": await _token}),
    );

    final list = jsonDecode(utf8.decode(response.bodyBytes))["news"] as List;

    return await Future.wait(list.map((e) => _crawl(e["news_url"]!)));
  }

  Future<NewsData> _crawl(String url) async {
    final response = await get(Uri.parse(url));
    final format = DateFormat("yyyy.MM.dd HH:mm:ss");
    final document = parse(response.bodyBytes).body!;

    final title = document.querySelector(".art_top h2")!.text;
    final subtitle = document.querySelector(".art_top h3")!.text;
    final match =
        _regex.firstMatch(document.querySelector(".art_info a")!.text)!;

    final reporter = match.group(1)!;
    final email = match.group(2)!;

    final infos = document.querySelectorAll(".art_info li");

    final registeredAt = format.parse(infos[1].text.split("등록")[1].trim());
    final editedAt = format.parse(infos[2].text.split("수정")[1].trim());

    final contents = document.querySelectorAll(".news_body_area p")
      ..removeLast();

    final content = contents.map((e) => e.text).join("\n").trim();
    return NewsData(
      title: title,
      content: content,
      reporter: reporter,
      email: email,
      registeredAt: registeredAt,
      editedAt: editedAt,
      siteName: "청년일보",
      subtitle: subtitle,
      url: url,
    );
  }
}
