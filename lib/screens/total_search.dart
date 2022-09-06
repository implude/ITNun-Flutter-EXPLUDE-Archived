import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';

import '../constants.dart';

class TotalSearch extends StatelessWidget {
  const TotalSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: GestureDetector(
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
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    size: 28,
                    color: Color(0xff3C65F8),
                  ),
                ),
                floatingLabelStyle: const TextStyle(color: appColor),
                enabled: true,
                hintText: "이곳에 입력",
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
                AppBox(
                    title: "청춘남녀만남지원",
                    category: "생활복지",
                    local: "경북",
                    isMarked: true),
                AppBox(
                    title: "주거안정 월세 대출",
                    category: "주거금융",
                    local: "전국",
                    isMarked: false),
                AppBox(
                    title: "인문 100년 장학금",
                    category: "생활복지",
                    local: "전국",
                    isMarked: false),
                AppBox(
                    title: "LH 희망상가",
                    category: "창업지원",
                    local: "전국",
                    isMarked: false),
              ],
            ),
          ],
        )),
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
      body: Column(children: const [
        Padding(
          padding: EdgeInsets.fromLTRB(75, 300, 0, 0),
          child: Text(
            "아무것도없어",
            style: TextStyle(
                color: appColor, fontSize: 50, fontWeight: FontWeight.bold),
          ),
        ),
      ]),
    );
  }
}
