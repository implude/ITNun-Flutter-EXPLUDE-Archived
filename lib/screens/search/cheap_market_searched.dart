import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';

import '../../constants.dart';

class CheapMarketSearched extends StatelessWidget {
  const CheapMarketSearched({Key? key}) : super(key: key);
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
                "착한가게 찾기",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
              SizedBox(
                height: context.heightTransformer(dividedBy: 22.10),
              ),
              SearchTextField(
                borderColor: cheapMarketColor,
                iconColor: const Color(0xffA59EFC),
                onPressed: () => Get.toNamed("/search/cheap/result"),
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
                  CheapMarketSearchAppBox(
                      title: "체스보드게임",
                      category: "기타서비스업",
                      local: "부산광역시",
                      isMarked: true),
                  CheapMarketSearchAppBox(
                      title: "맥스리뷰(금정점)",
                      category: "기타서비스업",
                      local: "부산광역시",
                      isMarked: false),
                  CheapMarketSearchAppBox(
                      title: "펠로",
                      category: "양식",
                      local: "부산광역시",
                      isMarked: false),
                  CheapMarketSearchAppBox(
                      title: "헤어디자이너 수빈",
                      category: "이미용업",
                      local: "광주광역시",
                      isMarked: false),
                  CheapMarketSearchAppBox(
                      title: "체스보드게임",
                      category: "기타서비스업",
                      local: "부산광역시",
                      isMarked: true),
                  CheapMarketSearchAppBox(
                      title: "맥스리뷰(금정점)",
                      category: "기타서비스업",
                      local: "부산광역시",
                      isMarked: false),
                  CheapMarketSearchAppBox(
                      title: "펠로",
                      category: "양식",
                      local: "부산광역시",
                      isMarked: false),
                  CheapMarketSearchAppBox(
                      title: "헤어디자이너 수빈",
                      category: "이미용업",
                      local: "광주광역시",
                      isMarked: false),
                  CheapMarketSearchAppBox(
                      title: "체스보드게임",
                      category: "기타서비스업",
                      local: "부산광역시",
                      isMarked: true),
                  CheapMarketSearchAppBox(
                      title: "맥스리뷰(금정점)",
                      category: "기타서비스업",
                      local: "부산광역시",
                      isMarked: false),
                  CheapMarketSearchAppBox(
                      title: "펠로",
                      category: "양식",
                      local: "부산광역시",
                      isMarked: false),
                  CheapMarketSearchAppBox(
                      title: "헤어디자이너 수빈",
                      category: "이미용업",
                      local: "광주광역시",
                      isMarked: false),
                  CheapMarketSearchAppBox(
                      title: "체스보드게임",
                      category: "기타서비스업",
                      local: "부산광역시",
                      isMarked: true),
                  CheapMarketSearchAppBox(
                      title: "맥스리뷰(금정점)",
                      category: "기타서비스업",
                      local: "부산광역시",
                      isMarked: false),
                  CheapMarketSearchAppBox(
                      title: "펠로",
                      category: "양식",
                      local: "부산광역시",
                      isMarked: false),
                  CheapMarketSearchAppBox(
                      title: "헤어디자이너 수빈",
                      category: "이미용업",
                      local: "광주광역시",
                      isMarked: false),
                  CheapMarketSearchAppBox(
                      title: "체스보드게임",
                      category: "기타서비스업",
                      local: "부산광역시",
                      isMarked: true),
                  CheapMarketSearchAppBox(
                      title: "맥스리뷰(금정점)",
                      category: "기타서비스업",
                      local: "부산광역시",
                      isMarked: false),
                  CheapMarketSearchAppBox(
                      title: "펠로",
                      category: "양식",
                      local: "부산광역시",
                      isMarked: false),
                  CheapMarketSearchAppBox(
                      title: "헤어디자이너 수빈",
                      category: "이미용업",
                      local: "광주광역시",
                      isMarked: false),
                  CheapMarketSearchAppBox(
                      title: "체스보드게임",
                      category: "기타서비스업",
                      local: "부산광역시",
                      isMarked: true),
                  CheapMarketSearchAppBox(
                      title: "맥스리뷰(금정점)",
                      category: "기타서비스업",
                      local: "부산광역시",
                      isMarked: false),
                  CheapMarketSearchAppBox(
                      title: "펠로",
                      category: "양식",
                      local: "부산광역시",
                      isMarked: false),
                  CheapMarketSearchAppBox(
                      title: "헤어디자이너 수빈",
                      category: "이미용업",
                      local: "광주광역시",
                      isMarked: false),
                  CheapMarketSearchAppBox(
                      title: "체스보드게임",
                      category: "기타서비스업",
                      local: "부산광역시",
                      isMarked: true),
                  CheapMarketSearchAppBox(
                      title: "맥스리뷰(금정점)",
                      category: "기타서비스업",
                      local: "부산광역시",
                      isMarked: false),
                  CheapMarketSearchAppBox(
                      title: "펠로",
                      category: "양식",
                      local: "부산광역시",
                      isMarked: false),
                  CheapMarketSearchAppBox(
                      title: "헤어디자이너 수빈",
                      category: "이미용업",
                      local: "광주광역시",
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
