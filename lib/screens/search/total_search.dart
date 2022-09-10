import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';

import '../../constants.dart';

class TotalSearch extends StatelessWidget {
  const TotalSearch({Key? key}) : super(key: key);

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
              SearchTextField(
                borderColor: appColor,
                iconColor: appColor.withOpacity(0.5),
                onPressed: () => Get.toNamed("/totalSearched"),
              ),
              SizedBox(
                height: context.heightTransformer(dividedBy: 28.13),
              ),
              Row(
                children: const [
                  Text(
                    "추천 정책",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: context.heightTransformer(dividedBy: 27.22),
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
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }
}

class None extends StatelessWidget {
  const None({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
        Center(
          child: Text(
            "아무\n것도\n없다\n인간\n무엇\n을바\n란건\n가아",
            style: TextStyle(
                color: appColor, fontSize: 50, fontWeight: FontWeight.bold),
          ),
        ),
      ]),
    );
  }
}
