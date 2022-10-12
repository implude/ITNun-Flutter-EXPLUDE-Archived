import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/controllers/search/policy_search_controller.dart';
import 'package:itnun/models/policy_info.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/bookmark_widget.dart';
import 'package:itnun/widgets/search_widgets.dart';

class TotalSearch extends GetView<PolicySearchController> {
  const TotalSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: FutureBuilder<List<PolicyInfo>>(
        future: controller.policies,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final policies = [...snapshot.data!]..shuffle();
            return SearchWidget(
              searchController: controller.searchController,
              title: "통합검색",
              subtitle: "추천 정책",
              borderColor: appColor,
              iconColor: appColor.withOpacity(0.5),
              children: policies
                  .sublist(0, 4)
                  .map(
                    (e) => PolicyBookmarkBox(
                      policyInfo: e,
                      marked: false,
                      onMarked: (value) {},
                    ),
                  )
                  .toList(),
              onSearchPressed: () async => Get.toNamed(
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
