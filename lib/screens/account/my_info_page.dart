import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/controllers/my_info_controller.dart';
import 'package:itnun/models/user.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/title_subject_widget.dart';

import '../../widgets/appbar_widgets.dart';

class MyInfoPage extends GetView<MyInfoController> {
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
        child: FutureBuilder<Rx<User>>(
          future: controller.user,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Obx(() {
                final user = snapshot.data!.value;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitleWidget(title: "내 정보"),
                    ...[
                      const _InfoWidget(description: "이름", value: "김태윤"),
                      _InfoWidget(description: "이메일", value: user.email),
                      const _InfoWidget(description: "지역", value: "세종"),
                      _InfoWidget(description: "직업", value: user.job.message),
                      _InfoWidget(
                          description: "교급", value: user.academic.message),
                      _InfoWidget(
                          description: "학과",
                          value: user.specialization.message),
                      _InfoWidget(
                          description: "창업 준비 여부",
                          value: user.preStartup ? "Y" : "N")
                    ].map((e) => Padding(
                          padding: EdgeInsets.only(
                              bottom: context.heightTransformer(dividedBy: 20)),
                          child: e,
                        ))
                  ],
                );
              });
            } else {
              return const SizedBox.shrink();
            }
          },
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
