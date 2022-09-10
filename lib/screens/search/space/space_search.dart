import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/bookmark_widget.dart';
import 'package:itnun/widgets/search_widgets.dart';

class SpaceSearch extends StatelessWidget {
  const SpaceSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: createDefaultAppBar(),
        body: SearchWidget(
            title: "청년공간 찾기",
            subtitle: "추천 가게",
            borderColor: const Color(0xFF4B3CF8),
            iconColor: const Color(0xFFA59EFC),
            children: [
              SpaceBookmarkBox(
                  title: "유유기지 부평",
                  region: "인천 부평구",
                  marked: true,
                  onMarked: (value) {}),
              SpaceBookmarkBox(
                  title: "광명시 청년동",
                  region: "경기 광명시",
                  marked: false,
                  onMarked: (value) {}),
              SpaceBookmarkBox(
                  title: "여주시 청년활동지원센터",
                  region: "경기 여주시",
                  marked: false,
                  onMarked: (value) {}),
              SpaceBookmarkBox(
                  title: "강릉시청년센터두루",
                  region: "강원 강릉시",
                  marked: false,
                  onMarked: (value) {})
            ],
            onSearchPressed: () => Get.toNamed("/search/space/result")));
  }
}
