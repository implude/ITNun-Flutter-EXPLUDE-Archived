import 'package:flutter/material.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/bookmark_widget.dart';
import 'package:itnun/widgets/search_widgets.dart';

class HireSearchPage extends StatelessWidget {
  const HireSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: SearchWidget(
        onSearchPressed: () {},
        title: "청년 채용 공고 찾기",
        subtitle: "추천 공고",
        borderColor: const Color(0xFF6721FC),
        iconColor: const Color(0xFFB390FE),
        children: [
          HireBookmarkBox(
              title: "[경력]반도체 배관시공 구매담당 채용",
              category: "D-59",
              region: "경기도 평택시",
              marked: true,
              onMarked: (value) {}),
          HireBookmarkBox(
              title: "품질관리 담당자 채용 공고",
              category: "채용시까지",
              region: "충청남도 아산시",
              marked: false,
              onMarked: (value) {}),
          HireBookmarkBox(
              title: "전기 생산품질직 채용",
              category: "채용시까지",
              region: "전라남도 순천시",
              marked: false,
              onMarked: (value) {}),
          HireBookmarkBox(
              title: "[한국TA] 21년 가구기업에서 가구...",
              category: "채용시까지",
              region: "경기도 남양주시",
              marked: false,
              onMarked: (value) {}),
        ],
      ),
    );
  }
}
