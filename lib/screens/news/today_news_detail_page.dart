import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/models/news_data.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TodayNewsDetailPage extends StatelessWidget {
  const TodayNewsDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = Get.arguments as NewsData;

    final format = DateFormat("yyyy.MM.dd HH:mm:ss");

    final widgets = [
      Text(
        data.title,
        style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
      Text(
        data.subtitle,
        style: const TextStyle(
            color: Color(0xFF818181),
            fontSize: 20,
            fontWeight: FontWeight.w600),
      ),
      Text(
        "${data.reporter} 기자 ${data.email}",
        style: const TextStyle(
          color: Color(0xFF414141),
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
      Text(
        "등록 ${format.format(data.registeredAt)}${data.editedAt != null ? "\n수정 ${format.format(data.editedAt!)}" : ""}",
        style: const TextStyle(color: Color(0xFFA1A1A1)),
      ),
      _AgreedInfo(siteName: data.siteName),
      Text(
        data.content,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
      ),
      AppButton(
        text: "${data.siteName}에서 더 알아보기",
        textColor: Colors.white,
        backgroundColor: appColor,
        onPressed: () =>
            launchUrlString(data.url, mode: LaunchMode.externalApplication),
      ),
    ];

    return Scaffold(
      appBar: createDefaultAppBar(),
      body: AppPadding(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: context.heightTransformer(dividedBy: 40)),
          child: ListView.separated(
              itemBuilder: (_, index) => widgets[index],
              separatorBuilder: (_, __) =>
                  SizedBox(height: context.heightTransformer(dividedBy: 60)),
              itemCount: widgets.length),
        ),
      ),
    );
  }
}

class _AgreedInfo extends StatelessWidget {
  final String siteName;

  const _AgreedInfo({Key? key, required this.siteName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFFF5F7FE),
          borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.all(18),
      child: Row(
        children: [
          const Icon(Icons.info_outline, size: 36),
          const Expanded(child: SizedBox.shrink()),
          Text(
            "아래의 정보들은 $siteName의 동의를 구하여\n정보를 제공받았음을 알립니다",
            textAlign: TextAlign.end,
            style: const TextStyle(
                color: Color(0xFF818181), fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
