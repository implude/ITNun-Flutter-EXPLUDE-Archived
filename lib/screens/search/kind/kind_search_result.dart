import 'package:flutter/material.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/bookmark_widget.dart';
import 'package:itnun/widgets/search_widgets.dart';

class KindSearchResult extends StatelessWidget {
  const KindSearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: SearchWidget(
          title: "선한 영향력 가게 찾기",
          subtitle: "검색 결과 18개",
          borderColor: const Color(0xFF4B3CF8),
          iconColor: const Color(0xFFA59EFC),
          children: [
            KindBookmarkBox(
                title: "사당 강고짐",
                region: "서울 서초구",
                marked: true,
                onMarked: (value) {}),
            KindBookmarkBox(
                title: "옆집 컴퓨터",
                region: "경기 양주시",
                marked: true,
                onMarked: (value) {}),
            KindBookmarkBox(
                title: "글라스밤안경 시흥은계정",
                region: "경기 시흥시",
                marked: true,
                onMarked: (value) {}),
            KindBookmarkBox(
                title: "소낭",
                region: "제주특별자치도 제주시",
                marked: true,
                onMarked: (value) {}),
            KindBookmarkBox(
                title: "당혹",
                region: "서울 노원구",
                marked: true,
                onMarked: (value) {}),
            KindBookmarkBox(
                title: "사당 강고집",
                region: "서울 서초구",
                marked: true,
                onMarked: (value) {}),
            KindBookmarkBox(
                title: "옆집 컴퓨터",
                region: "경기 양주시",
                marked: true,
                onMarked: (value) {}),
            KindBookmarkBox(
                title: "글라스밤안경 시흥은계정",
                region: "경기 시흥시",
                marked: true,
                onMarked: (value) {}),
            KindBookmarkBox(
                title: "소낭",
                region: "제주특별자치도 제주시",
                marked: true,
                onMarked: (value) {}),
            KindBookmarkBox(
                title: "당혹",
                region: "서울 노원구",
                marked: true,
                onMarked: (value) {}),
            KindBookmarkBox(
                title: "소낭",
                region: "제주특별자치도 제주시",
                marked: true,
                onMarked: (value) {}),
            KindBookmarkBox(
                title: "당혹",
                region: "서울 노원구",
                marked: true,
                onMarked: (value) {}),
          ],
          onSearchPressed: () {}),
    );
  }
}
