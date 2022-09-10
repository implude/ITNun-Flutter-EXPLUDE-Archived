import 'package:flutter/material.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/detail_widgets.dart';
import 'package:itnun/widgets/search_widgets.dart';

class KindSearchDetail extends StatelessWidget {
  const KindSearchDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: const SearchDetailWidget(title: "사당 강고집", children: [
        DetailComponent(children: [
          DetailValueBox(description: "주소", value: "서울 서초구 방배천로4안길 6 1층 강고집"),
          DetailValueBox(description: "전화번호", value: "02-6489-9589"),
          DetailValueBox(description: "영업시간", value: "16:00~23:00"),
          DetailValueBox(description: "휴무시간", value: "토요일 일요일"),
          DetailValueBox(description: "제공대상", value: "동반 2인 결식 아동"),
          DetailValueBox(description: "제공품목", value: "모든메뉴")
        ]),
        DetailComponent(title: "지도", children: [
          NaverMapBox(),
          InfoWithIcon(info: "위의 정보들은 선한영향력가게의 동의를\n구하여 정보를 제공받았음을 알립니다")
        ])
      ]),
    );
  }
}
