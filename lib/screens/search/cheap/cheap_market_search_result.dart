import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/controllers/search/cheap_search_controller.dart';
import 'package:itnun/models/cheap_market_info.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/bookmark_widget.dart';
import 'package:itnun/widgets/search_widgets.dart';

class CheapMarketSearchResult extends GetView<CheapSearchController> {
  const CheapMarketSearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: FutureBuilder<List<CheapMarketInfo>>(
        future: controller.markets,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final query = Get.parameters["query"]!;
            final markets =
                snapshot.data!.where((element) => element.name.contains(query));
            return SearchWidget(
              searchController: controller.searchController,
              title: "착한가게 찾기",
              subtitle: "검색 결과 ${markets.length}개",
              borderColor: const Color(0xff4B3CF8),
              iconColor: const Color(0xFFA59EFC),
              onSearchPressed: () async => Get.offNamed(
                  "/search/cheap/result?query=${controller.searchController.text}",
                  arguments: await controller.markets),
              children: markets
                  .map((e) => CheapMarketBookmarkBox(
                      marketInfo: e, marked: false, onMarked: (value) {}))
                  .toList(),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
