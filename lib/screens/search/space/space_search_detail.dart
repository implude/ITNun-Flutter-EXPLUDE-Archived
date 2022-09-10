import 'package:flutter/material.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/detail_widgets.dart';
import 'package:itnun/widgets/search_widgets.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SpaceSearchDetail extends StatelessWidget {
  const SpaceSearchDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: SearchDetailWidget(title: "유유기지 부평", children: [
        const DetailComponent(children: [
          DetailValueBox(
              description: "주소",
              value: "인천광역시 부평구 청천동 440-4\n(부평대로 301) 남광센트렉스 116호"),
          DetailValueBox(description: "전화번호", value: "032-363-3141~3"),
          DetailValueBox(
              description: "영업시간",
              value:
                  "월/화 10:00~21:00, 수/목/금\n10:00~21:00, 토 10:00~18:00\n※일요일,공휴일 휴관"),
          DetailValueBox(
              description: "공간유형", value: "라운지, 회의실, 체험실, 휴식공간, 공유부엌"),
          DetailValueBox(description: "공간이용 비용", value: "무료"),
          DetailValueBox(description: "부대시설 비용", value: "무료"),
          DetailValueBox(description: "식음료", value: "제공"),
          DetailValueBox(description: "홈페이지 URL", value: "https://www.inuu.kr/")
        ]),
        DetailComponent(title: "지도", children: [
          const NaverMapBox(),
          AppButton(
              text: "홈페이지에서 더보기",
              textColor: Colors.white,
              backgroundColor: appColor,
              onPressed: () => launchUrlString("https://www.inuu.kr/",
                  mode: LaunchMode.externalApplication))
        ])
      ]),
    );
  }
}
