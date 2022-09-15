import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/controllers/search/space_search_controller.dart';
import 'package:itnun/models/space_info.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/bookmark_widget.dart';
import 'package:itnun/widgets/search_widgets.dart';

class SpaceSearchResult extends GetView<SpaceSearchController> {
  const SpaceSearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: FutureBuilder<List<SpaceInfo>>(
          future: controller.spaces,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final query = Get.parameters["query"]!;
              final spaces = snapshot.data!
                  .where((element) => element.name.contains(query));
              return SearchWidget(
                searchController: controller.searchController,
                title: "청년공간 찾기",
                subtitle: "검색 결과 ${spaces.length}개",
                borderColor: const Color(0xFF4B3CF8),
                iconColor: const Color(0xFFA59EFC),
                children: spaces
                    .map(
                      (e) => SpaceBookmarkBox(
                          spaceInfo: e, marked: false, onMarked: (value) {}),
                    )
                    .toList(),
                onSearchPressed: () async => Get.offNamed(
                    "/search/space/result?query=${controller.searchController.text}",
                    arguments: await controller.spaces),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}
