import 'package:flutter/material.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/detail_widgets.dart';
import 'package:itnun/widgets/search_widgets.dart';

class CheapMarketSearchDetail extends StatelessWidget {
  const CheapMarketSearchDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: const SearchDetailWidget(title: "체스보드게임", children: [
        DetailComponent(children: [
          DetailValueBox(description: "주소", value: "부산광역시 금정구 금강로 247-12"),
          DetailValueBox(description: "전화번호", value: "051-583-9632"),
          InfoBox(
              title: "주요품목", contents: ["1시간(후불): 2400원", "2시간(선불): 4000원"]),
          InfoBox(title: "메모", contents: [
            "부산대 상권의 역사가 깊은 보드게임방입니다. 가장 저렴한 가격으로 가장 서비스 좋은 보드게임카페를 운영하고자 하는 사장님의 남다른 철학이 돋보이는 가게입니다. 다양한 게임에 간식서비스까지! 많이들 찾아주세요"
          ])
        ]),
        DetailComponent(title: "지도", children: [
          NaverMapBox(),
          InfoWithIcon(info: "위의 정보들은 행정안전부\n착한가격업소의 동의를 구하여\n정보를 제공받았음을 알립니다")
        ])
      ]),
    );
  }
}
