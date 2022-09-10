import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';

import '../../widgets/bookmark_widget.dart';

class CheapMarketSearch extends StatelessWidget {
  const CheapMarketSearch({Key? key}) : super(key: key);

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
                "착한가게 찾기",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
              SizedBox(
                height: context.heightTransformer(dividedBy: 22.10),
              ),
              SearchTextField(
                borderColor: const Color(0xFF4B3CF8),
                iconColor: const Color(0xFFA59EFC),
                onPressed: () => Get.toNamed("/search/cheap/result"),
              ),
              SizedBox(
                height: context.heightTransformer(dividedBy: 28.13),
              ),
              Row(
                children: const [
                  Text(
                    "추천 가게",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: context.heightTransformer(dividedBy: 27.22),
              ),
              ...[
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
