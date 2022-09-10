import 'package:flutter/material.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/bookmark_widget.dart';
import 'package:itnun/widgets/search_widgets.dart';

class CheapMarketSearchResult extends StatelessWidget {
  const CheapMarketSearchResult({Key? key}) : super(key: key);
  static const int count = 30;
  static const String answer = "일하기싫어ㅓㅓㅓㅓ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: SearchWidget(
        title: "착한가게 찾기",
        subtitle: "검색 결과 18개",
        borderColor: const Color(0xff4B3CF8),
        iconColor: const Color(0xFFA59EFC),
        onSearchPressed: () {},
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
          ),
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
          ),
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
          ),
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
          ),
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
          ),
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
          ),
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
        ],
      ),
    );
  }
}
