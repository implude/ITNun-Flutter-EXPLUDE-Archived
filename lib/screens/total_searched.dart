import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';

import '../constants.dart';

class TotalSearched extends StatelessWidget {
  const TotalSearched({Key? key}) : super(key: key);
  static const int count = 30;
  static const String answer = "일하기싫어ㅓㅓㅓㅓ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: FocusScope.of(context).unfocus,
          behavior: HitTestBehavior.opaque,
          child: AppPadding(
              child: Column(
            children: [
              SizedBox(
                height: context.heightTransformer(dividedBy: 22.10),
              ),
              const Text(
                "통합검색",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
              SizedBox(
                height: context.heightTransformer(dividedBy: 22.10),
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 24,
                      horizontal: context.widthTransformer(dividedBy: 9.75)),
                  suffixIcon: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: context.widthTransformer(dividedBy: 20.93)),
                    child: IconButton(
                      onPressed: () {
                        Get.toNamed("/totalSearched");
                      },
                      icon: const Icon(
                        Icons.search,
                        size: 32,
                        color: Color(0xff3C65F8),
                      ),
                    ),
                  ),
                  floatingLabelStyle: const TextStyle(color: appColor),
                  enabled: true,
                  hintText: answer,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                    borderSide: const BorderSide(color: appColor, width: 3),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                    borderSide: const BorderSide(color: appColor, width: 3),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(13),
                    borderSide: const BorderSide(color: appColor, width: 3),
                  ),
                ),
              ),
              SizedBox(
                height: context.heightTransformer(dividedBy: 28.13),
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
              Column(
                children: const [
                  TotalSearchAppBox(
                      title: "청춘남녀만남지원",
                      category: "생활복지",
                      local: "경북",
                      isMarked: true),
                  TotalSearchAppBox(
                      title: "주거안정 월세 대출",
                      category: "주거금융",
                      local: "전국",
                      isMarked: false),
                  TotalSearchAppBox(
                      title: "인문 100년 장학금",
                      category: "생활복지",
                      local: "전국",
                      isMarked: false),
                  TotalSearchAppBox(
                      title: "LH 희망상가",
                      category: "창업지원",
                      local: "전국",
                      isMarked: false),
                  TotalSearchAppBox(
                      title: "청춘남녀만남지원",
                      category: "생활복지",
                      local: "경북",
                      isMarked: true),
                  TotalSearchAppBox(
                      title: "주거안정 월세 대출",
                      category: "주거금융",
                      local: "전국",
                      isMarked: false),
                  TotalSearchAppBox(
                      title: "인문 100년 장학금",
                      category: "생활복지",
                      local: "전국",
                      isMarked: false),
                  TotalSearchAppBox(
                      title: "LH 희망상가",
                      category: "창업지원",
                      local: "전국",
                      isMarked: false),
                  TotalSearchAppBox(
                      title: "청춘남녀만남지원",
                      category: "생활복지",
                      local: "경북",
                      isMarked: true),
                  TotalSearchAppBox(
                      title: "주거안정 월세 대출",
                      category: "주거금융",
                      local: "전국",
                      isMarked: false),
                  TotalSearchAppBox(
                      title: "인문 100년 장학금",
                      category: "생활복지",
                      local: "전국",
                      isMarked: false),
                  TotalSearchAppBox(
                      title: "LH 희망상가",
                      category: "창업지원",
                      local: "전국",
                      isMarked: false),
                  TotalSearchAppBox(
                      title: "청춘남녀만남지원",
                      category: "생활복지",
                      local: "경북",
                      isMarked: true),
                  TotalSearchAppBox(
                      title: "주거안정 월세 대출",
                      category: "주거금융",
                      local: "전국",
                      isMarked: false),
                  TotalSearchAppBox(
                      title: "인문 100년 장학금",
                      category: "생활복지",
                      local: "전국",
                      isMarked: false),
                  TotalSearchAppBox(
                      title: "LH 희망상가",
                      category: "창업지원",
                      local: "전국",
                      isMarked: false),
                  TotalSearchAppBox(
                      title: "청춘남녀만남지원",
                      category: "생활복지",
                      local: "경북",
                      isMarked: true),
                  TotalSearchAppBox(
                      title: "주거안정 월세 대출",
                      category: "주거금융",
                      local: "전국",
                      isMarked: false),
                  TotalSearchAppBox(
                      title: "인문 100년 장학금",
                      category: "생활복지",
                      local: "전국",
                      isMarked: false),
                  TotalSearchAppBox(
                      title: "LH 희망상가",
                      category: "창업지원",
                      local: "전국",
                      isMarked: false),
                  TotalSearchAppBox(
                      title: "청춘남녀만남지원",
                      category: "생활복지",
                      local: "경북",
                      isMarked: true),
                  TotalSearchAppBox(
                      title: "주거안정 월세 대출",
                      category: "주거금융",
                      local: "전국",
                      isMarked: false),
                  TotalSearchAppBox(
                      title: "인문 100년 장학금",
                      category: "생활복지",
                      local: "전국",
                      isMarked: false),
                  TotalSearchAppBox(
                      title: "LH 희망상가",
                      category: "창업지원",
                      local: "전국",
                      isMarked: false),
                  TotalSearchAppBox(
                      title: "청춘남녀만남지원",
                      category: "생활복지",
                      local: "경북",
                      isMarked: true),
                  TotalSearchAppBox(
                      title: "주거안정 월세 대출",
                      category: "주거금융",
                      local: "전국",
                      isMarked: false),
                  TotalSearchAppBox(
                      title: "인문 100년 장학금",
                      category: "생활복지",
                      local: "전국",
                      isMarked: false),
                  TotalSearchAppBox(
                      title: "LH 희망상가",
                      category: "창업지원",
                      local: "전국",
                      isMarked: false),
                  TotalSearchAppBox(
                      title: "청춘남녀만남지원",
                      category: "생활복지",
                      local: "경북",
                      isMarked: true),
                  TotalSearchAppBox(
                      title: "주거안정 월세 대출",
                      category: "주거금융",
                      local: "전국",
                      isMarked: false),
                  TotalSearchAppBox(
                      title: "인문 100년 장학금",
                      category: "생활복지",
                      local: "전국",
                      isMarked: false),
                  TotalSearchAppBox(
                      title: "LH 희망상가",
                      category: "창업지원",
                      local: "전국",
                      isMarked: false),
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }
}
