import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';

import '../../constants.dart';
import '../../widgets/bookmark_widget.dart';

class DetailSearched extends StatelessWidget {
  const DetailSearched({Key? key}) : super(key: key);
  static const int count = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: SingleChildScrollView(
        child: FocusUnSetter(
          child: AppPadding(
              child: Column(
            children: [
              SizedBox(
                height: context.heightTransformer(dividedBy: 22.10),
              ),
              const Text(
                "상세검색",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
              SizedBox(
                height: context.heightTransformer(dividedBy: 844 / 44),
              ),
              Row(
                children: const [
                  Text(
                    "검색 결과 $count개",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: context.heightTransformer(dividedBy: 42.2),
              ),
              ...[
                BookmarkAbleBox(
                    title: "청춘남녀만남지원",
                    category: "생활복지",
                    region: "경북",
                    marked: true,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "주거안정 월세 대출",
                    category: "주거금융",
                    region: "전국",
                    marked: false,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "인문 100년 장학금",
                    category: "생활복지",
                    region: "전국",
                    marked: false,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "LH 희망상가",
                    category: "창업지원",
                    region: "전국",
                    marked: false,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "청춘남녀만남지원",
                    category: "생활복지",
                    region: "경북",
                    marked: true,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "주거안정 월세 대출",
                    category: "주거금융",
                    region: "전국",
                    marked: false,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "인문 100년 장학금",
                    category: "생활복지",
                    region: "전국",
                    marked: false,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "LH 희망상가",
                    category: "창업지원",
                    region: "전국",
                    marked: false,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "청춘남녀만남지원",
                    category: "생활복지",
                    region: "경북",
                    marked: true,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "주거안정 월세 대출",
                    category: "주거금융",
                    region: "전국",
                    marked: false,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "인문 100년 장학금",
                    category: "생활복지",
                    region: "전국",
                    marked: false,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "LH 희망상가",
                    category: "창업지원",
                    region: "전국",
                    marked: false,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "청춘남녀만남지원",
                    category: "생활복지",
                    region: "경북",
                    marked: true,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "주거안정 월세 대출",
                    category: "주거금융",
                    region: "전국",
                    marked: false,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "인문 100년 장학금",
                    category: "생활복지",
                    region: "전국",
                    marked: false,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "LH 희망상가",
                    category: "창업지원",
                    region: "전국",
                    marked: false,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "청춘남녀만남지원",
                    category: "생활복지",
                    region: "경북",
                    marked: true,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "주거안정 월세 대출",
                    category: "주거금융",
                    region: "전국",
                    marked: false,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "인문 100년 장학금",
                    category: "생활복지",
                    region: "전국",
                    marked: false,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "LH 희망상가",
                    category: "창업지원",
                    region: "전국",
                    marked: false,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "청춘남녀만남지원",
                    category: "생활복지",
                    region: "경북",
                    marked: true,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "주거안정 월세 대출",
                    category: "주거금융",
                    region: "전국",
                    marked: false,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "인문 100년 장학금",
                    category: "생활복지",
                    region: "전국",
                    marked: false,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "LH 희망상가",
                    category: "창업지원",
                    region: "전국",
                    marked: false,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "청춘남녀만남지원",
                    category: "생활복지",
                    region: "경북",
                    marked: true,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "주거안정 월세 대출",
                    category: "주거금융",
                    region: "전국",
                    marked: false,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "인문 100년 장학금",
                    category: "생활복지",
                    region: "전국",
                    marked: false,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "LH 희망상가",
                    category: "창업지원",
                    region: "전국",
                    marked: false,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "청춘남녀만남지원",
                    category: "생활복지",
                    region: "경북",
                    marked: true,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "주거안정 월세 대출",
                    category: "주거금융",
                    region: "전국",
                    marked: false,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "인문 100년 장학금",
                    category: "생활복지",
                    region: "전국",
                    marked: false,
                    onMarked: (value) {},
                    backgroundColor: appColor),
                BookmarkAbleBox(
                    title: "LH 희망상가",
                    category: "창업지원",
                    region: "전국",
                    marked: false,
                    onMarked: (value) {},
                    backgroundColor: appColor)
              ].map((e) => Padding(
                    padding: EdgeInsets.only(
                        bottom: context.heightTransformer(dividedBy: 60)),
                    child: e,
                  ))
            ],
          )),
        ),
      ),
    );
  }
}
