import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/title_subject_widget.dart';

import '../../widgets/appbar_widgets.dart';

class MyInfoPage extends StatelessWidget {
  const MyInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(
        actions: [
          IconButton(
              onPressed: () => Get.toNamed("/account/info/edit"),
              icon: const Icon(
                Icons.mode_edit_outlined,
                color: Colors.black,
              ))
        ],
      ),
      body: AppPadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleWidget(title: "내 정보"),
            ...[
              const _InfoWidget(description: "이름", value: "김태윤"),
              const _InfoWidget(
                  description: "이메일", value: "ktywp8436@dimigo.hs.kr"),
              const _InfoWidget(description: "지역", value: "세종"),
              const _InfoWidget(description: "직업", value: "학생"),
              const _InfoWidget(description: "교급", value: "고등학교"),
              const _InfoWidget(description: "학과", value: "웹프로그래밍과"),
              const _InfoWidget(description: "창업 준비 여부", value: "Y")
            ].map((e) => Padding(
                  padding: EdgeInsets.only(
                      bottom: context.heightTransformer(dividedBy: 20)),
                  child: e,
                ))
          ],
        ),
      ),
    );
  }
}

class _InfoWidget extends StatelessWidget {
  final String description;
  final String value;

  const _InfoWidget({Key? key, required this.description, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          description,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        const Expanded(child: SizedBox.shrink()),
        Text(
          value,
          style: const TextStyle(fontSize: 18, color: Color(0xFFA1A1A1)),
        )
      ],
    );
  }
}
