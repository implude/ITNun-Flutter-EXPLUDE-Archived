import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/models/policy_info.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/bookmark_widget.dart';
import 'package:itnun/widgets/search_widgets.dart';

class DetailSearchResult extends StatelessWidget {
  const DetailSearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final policies = Get.arguments as List<PolicyInfo>;
    final length = policies.length;
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: SearchWidget(
        title: "상세검색",
        subtitle: "검색 결과 ${length == 100 ? "100+" : length}개",
        children: policies
            .map((e) => PolicyBookmarkBox(
                policyInfo: e, marked: false, onMarked: (value) {}))
            .toList(),
      ),
    );
  }
}
