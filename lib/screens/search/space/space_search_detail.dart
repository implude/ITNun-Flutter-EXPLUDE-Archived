import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/models/space_info.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/detail_widgets.dart';
import 'package:itnun/widgets/search_widgets.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SpaceSearchDetail extends StatelessWidget {
  const SpaceSearchDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final info = Get.arguments as SpaceInfo;
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: SearchDetailWidget(
        title: info.name,
        children: [
          DetailComponent(children: [
            DetailValueBox(description: "주소", value: info.address),
            DetailValueBox(description: "전화번호", value: info.phone),
            DetailValueBox(description: "영업시간", value: info.officeHours),
            DetailValueBox(description: "공간유형", value: info.type),
            DetailValueBox(description: "공간이용 비용", value: info.cost),
            DetailValueBox(description: "부대시설 비용", value: info.facilCost),
            DetailValueBox(description: "식음료", value: info.food),
            DetailValueBox(description: "홈페이지 URL", value: info.page)
          ]),
          DetailComponent(title: "지도", children: [
            const NaverMapBox(),
            AppButton(
                text: "홈페이지에서 더보기",
                textColor: Colors.white,
                backgroundColor: appColor,
                onPressed: () => launchUrlString(info.page,
                    mode: LaunchMode.externalApplication))
          ])
        ],
      ),
    );
  }
}
