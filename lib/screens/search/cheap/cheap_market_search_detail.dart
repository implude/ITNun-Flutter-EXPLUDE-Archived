import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/models/cheap_market_info.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/detail_widgets.dart';
import 'package:itnun/widgets/search_widgets.dart';

class CheapMarketSearchDetail extends StatelessWidget {
  const CheapMarketSearchDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final marketInfo = Get.arguments as CheapMarketInfo;
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: SearchDetailWidget(
        title: marketInfo.name,
        children: [
          DetailComponent(children: [
            DetailValueBox(description: "주소", value: marketInfo.address),
            DetailValueBox(description: "전화번호", value: marketInfo.callNumber),
            InfoBox(
                title: "주요품목",
                contents: marketInfo.goodMenuStatus.entries
                    .map((e) => "${e.key}: ${e.value}원")
                    .toList()),
          ]),
          const DetailComponent(title: "지도", children: [
            NaverMapBox(),
            InfoWithIcon(
                info: "위의 정보들은 행정안전부\n착한가격업소의 동의를 구하여\n정보를 제공받았음을 알립니다")
          ])
        ],
      ),
    );
  }
}
