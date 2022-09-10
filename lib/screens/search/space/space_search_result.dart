import 'package:flutter/material.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/bookmark_widget.dart';
import 'package:itnun/widgets/search_widgets.dart';

class SpaceSearchResult extends StatelessWidget {
  const SpaceSearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: SearchWidget(
          title: "청년공간 찾기",
          subtitle: "검색 결과 18개",
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
                onMarked: (value) {}),
            SpaceBookmarkBox(
                title: "삼척청년센터",
                region: "강원 삼척시",
                marked: true,
                onMarked: (value) {}),
            SpaceBookmarkBox(
                title: "파주시 청년공간 GP1934",
                region: "경기 파주시",
                marked: true,
                onMarked: (value) {}),
            SpaceBookmarkBox(
                title: "삼양청년회관",
                region: "서울 강북구",
                marked: false,
                onMarked: (value) {}),
            SpaceBookmarkBox(
                title: "대진대학교 '청년공간ON'",
                region: "경기 포천시",
                marked: false,
                onMarked: (value) {}),
            SpaceBookmarkBox(
                title: "제주청년센터",
                region: "제주 제주시",
                marked: false,
                onMarked: (value) {}),
            SpaceBookmarkBox(
                title: "청년다락2호점",
                region: "제주 서귀포시",
                marked: false,
                onMarked: (value) {}),
            SpaceBookmarkBox(
                title: "청년다락1호점",
                region: "제주 제주시",
                marked: false,
                onMarked: (value) {}),
            SpaceBookmarkBox(
                title: "새청나래",
                region: "세종 세종시",
                marked: false,
                onMarked: (value) {})
          ],
          onSearchPressed: () {}),
    );
  }
}
