import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/models/policy_info.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/detail_widgets.dart';
import 'package:itnun/widgets/search_widgets.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TotalSearchDetail extends StatelessWidget {
  const TotalSearchDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final info = Get.arguments as PolicyInfo;
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: SearchDetailWidget(title: info.name, children: [
        DetailComponent(title: "정책 소개", children: [
          PlainTextBox(text: info.description),
        ]),
        DetailComponent(
          title: "정책 요약",
          children: [
            DetailValueBox(description: "정책 유형", value: info.type),
            InfoBox(title: "지원 내용", contents: info.sporDescription.split("\n")),
            DetailValueBox(description: "지원 규모", value: info.sporAmount)
          ],
        ),
        DetailComponent(
          title: "신청 자격",
          children: [
            DetailValueBox(description: "연령", value: info.age),
            DetailValueBox(description: "학력", value: info.academic),
            DetailValueBox(description: "전공", value: info.specialization),
            DetailValueBox(description: "취업 상태", value: info.job),
            DetailValueBox(description: "특화분야", value: info.goodAt)
          ],
        ),
        DetailComponent(
          title: "신청 방법",
          children: [
            InfoBox(title: "신청 절차", contents: info.progress.split("\n")),
            DetailValueBox(description: "신청 사이트", value: info.website ?? "-"),
            AppButton(
                text: "신청 사이트로 가기",
                textColor: Colors.white,
                backgroundColor: appColor,
                onPressed: () => launchUrlString(info.website!,
                    mode: LaunchMode.externalApplication))
          ],
        )
      ]),
    );
  }
}
