import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/controllers/search/cheap_search_controller.dart';
import 'package:itnun/models/cheap_market_info.dart';
import 'package:itnun/widgets/appbar_widgets.dart';

import '../../../widgets/bookmark_widget.dart';
import '../../../widgets/search_widgets.dart';

class CheapMarketSearch extends GetView<CheapSearchController> {
  const CheapMarketSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: FutureBuilder<List<CheapMarketInfo>>(
        future: controller.markets,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final markets = snapshot.data!..shuffle();
            return SearchWidget(
              searchController: controller.searchController,
              title: "착한가게 찾기",
              subtitle: "추천 가게",
              borderColor: const Color(0xff4B3CF8),
              iconColor: const Color(0xFFA59EFC),
              onSearchPressed: () async => Get.toNamed(
                  "/search/cheap/result?query=${controller.searchController.text}",
                  arguments: await controller.markets),
              children: markets
                  .sublist(0, 4)
                  .map(
                    (e) => CheapMarketBookmarkBox(
                      marketInfo: e,
                      marked: false,
                      onMarked: (value) {},
                    ),
                  )
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
