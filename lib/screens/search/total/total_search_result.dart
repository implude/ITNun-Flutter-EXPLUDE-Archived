import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/controllers/search/policy_search_controller.dart';
import 'package:itnun/models/policy_info.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/bookmark_widget.dart';
import 'package:itnun/widgets/search_widgets.dart';

class TotalSearchResult extends GetView<PolicySearchController> {
  const TotalSearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: FutureBuilder<List<PolicyInfo>>(
        future: controller.policies,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final query = Get.parameters["query"]!;
            final policies =
                snapshot.data!.where((element) => element.name.contains(query));
            return SearchWidget(
              searchController: controller.searchController,
              title: "통합검색",
              subtitle: "검색 결과 ${policies.length}개",
              borderColor: appColor,
              iconColor: appColor.withOpacity(0.5),
              children: policies
                  .map((e) => PolicyBookmarkBox(
                      policyInfo: e, marked: false, onMarked: (value) {}))
                  .toList(),
              onSearchPressed: () async => Get.offNamed(
                  "/search/total/result?query=${controller.searchController.text}",
                  arguments: await controller.policies),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
