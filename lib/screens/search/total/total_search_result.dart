import 'package:flutter/material.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/bookmark_widget.dart';
import 'package:itnun/widgets/search_widgets.dart';

class TotalSearchResult extends StatelessWidget {
  const TotalSearchResult({Key? key}) : super(key: key);
  static const int count = 30;
  static const String answer = "일하기싫어ㅓㅓㅓㅓ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: SearchWidget(
          title: "통합검색",
          subtitle: "검색 결과 18개",
          borderColor: appColor,
          iconColor: appColor.withOpacity(0.5),
          children: [
            TotalBookmarkBox(
              title: "청춘남녀만남지원",
              category: "생활복지",
              region: "경북",
              marked: true,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "주거안정 월세 대출",
              category: "주거금융",
              region: "전국",
              marked: false,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "인문 100년 장학금",
              category: "생활복지",
              region: "전국",
              marked: false,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "LH 희망상가",
              category: "창업지원",
              region: "전국",
              marked: false,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "청춘남녀만남지원",
              category: "생활복지",
              region: "경북",
              marked: true,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "주거안정 월세 대출",
              category: "주거금융",
              region: "전국",
              marked: false,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "인문 100년 장학금",
              category: "생활복지",
              region: "전국",
              marked: false,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "LH 희망상가",
              category: "창업지원",
              region: "전국",
              marked: false,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "청춘남녀만남지원",
              category: "생활복지",
              region: "경북",
              marked: true,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "주거안정 월세 대출",
              category: "주거금융",
              region: "전국",
              marked: false,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "인문 100년 장학금",
              category: "생활복지",
              region: "전국",
              marked: false,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "LH 희망상가",
              category: "창업지원",
              region: "전국",
              marked: false,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "청춘남녀만남지원",
              category: "생활복지",
              region: "경북",
              marked: true,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "주거안정 월세 대출",
              category: "주거금융",
              region: "전국",
              marked: false,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "인문 100년 장학금",
              category: "생활복지",
              region: "전국",
              marked: false,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "LH 희망상가",
              category: "창업지원",
              region: "전국",
              marked: false,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "청춘남녀만남지원",
              category: "생활복지",
              region: "경북",
              marked: true,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "주거안정 월세 대출",
              category: "주거금융",
              region: "전국",
              marked: false,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "인문 100년 장학금",
              category: "생활복지",
              region: "전국",
              marked: false,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "LH 희망상가",
              category: "창업지원",
              region: "전국",
              marked: false,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "청춘남녀만남지원",
              category: "생활복지",
              region: "경북",
              marked: true,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "주거안정 월세 대출",
              category: "주거금융",
              region: "전국",
              marked: false,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "인문 100년 장학금",
              category: "생활복지",
              region: "전국",
              marked: false,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "LH 희망상가",
              category: "창업지원",
              region: "전국",
              marked: false,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "청춘남녀만남지원",
              category: "생활복지",
              region: "경북",
              marked: true,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "주거안정 월세 대출",
              category: "주거금융",
              region: "전국",
              marked: false,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "인문 100년 장학금",
              category: "생활복지",
              region: "전국",
              marked: false,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "LH 희망상가",
              category: "창업지원",
              region: "전국",
              marked: false,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "청춘남녀만남지원",
              category: "생활복지",
              region: "경북",
              marked: true,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "주거안정 월세 대출",
              category: "주거금융",
              region: "전국",
              marked: false,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "인문 100년 장학금",
              category: "생활복지",
              region: "전국",
              marked: false,
              onMarked: (value) {},
            ),
            TotalBookmarkBox(
              title: "LH 희망상가",
              category: "창업지원",
              region: "전국",
              marked: false,
              onMarked: (value) {},
            )
          ],
          onSearchPressed: () {}),
    );
  }
}
