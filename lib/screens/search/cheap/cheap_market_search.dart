import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/widgets/appbar_widgets.dart';

import '../../../widgets/bookmark_widget.dart';
import '../../../widgets/search_widgets.dart';

class CheapMarketSearch extends StatelessWidget {
  const CheapMarketSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: SearchWidget(
          title: "착한가게 찾기",
          subtitle: "추천 가게",
          borderColor: const Color(0xff4B3CF8),
          iconColor: const Color(0xFFA59EFC),
          onSearchPressed: () => Get.toNamed("/search/cheap/result"),
          children: [
            CheapMarketBookmarkBox(
              title: "체스보드게임",
              category: "기타서비스업",
              region: "부산광역시",
              marked: true,
              onMarked: (value) {},
            ),
            CheapMarketBookmarkBox(
              title: "맥스리뷰(금정점)",
              category: "기타서비스업",
              region: "부산광역시",
              marked: false,
              onMarked: (value) {},
            ),
            CheapMarketBookmarkBox(
              title: "펠로",
              category: "양식",
              region: "부산광역시",
              marked: false,
              onMarked: (value) {},
            ),
            CheapMarketBookmarkBox(
              title: "헤어디자이너 수빈",
              category: "이미용업",
              region: "광주광역시",
              marked: false,
              onMarked: (value) {},
            )
          ]),
    );
  }
}
