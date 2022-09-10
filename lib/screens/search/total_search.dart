import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';

import '../../constants.dart';
import '../../widgets/bookmark_widget.dart';
import '../../widgets/search_widgets.dart';

class TotalSearch extends StatelessWidget {
  const TotalSearch({Key? key}) : super(key: key);

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
                "통합검색",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
              SizedBox(
                height: context.heightTransformer(dividedBy: 22.10),
              ),
              SearchTextField(
                borderColor: appColor,
                iconColor: appColor.withOpacity(0.5),
                onPressed: () => Get.toNamed("/search/total/result"),
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
              ...[
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
