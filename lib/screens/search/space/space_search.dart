import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/controllers/search/space_search_controller.dart';
import 'package:itnun/models/space_info.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/bookmark_widget.dart';
import 'package:itnun/widgets/search_widgets.dart';

class SpaceSearch extends GetView<SpaceSearchController> {
  const SpaceSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: FutureBuilder<List<SpaceInfo>>(
          future: controller.spaces,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final spaces = snapshot.data!..shuffle();
              return SearchWidget(
                searchController: controller.searchController,
                title: "청년공간 찾기",
                subtitle: "추천 가게",
                borderColor: const Color(0xFF4B3CF8),
                iconColor: const Color(0xFFA59EFC),
                children: spaces
                    .sublist(0, 4)
                    .map((e) => SpaceBookmarkBox(
                        spaceInfo: e, marked: false, onMarked: (value) {}))
                    .toList(),
                onSearchPressed: () async => Get.toNamed(
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
