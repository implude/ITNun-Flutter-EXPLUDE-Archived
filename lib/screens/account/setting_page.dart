import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/controllers/setting_controller.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/title_subject_widget.dart';

class SettingPage extends GetView<SettingController> {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: AppPadding(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleWidget(title: "설정"),
          ...[
            Obx(() => _SettingWidget(
                description: "푸시 알림",
                enabled: controller.pushNotification.value,
                onChanged: controller.pushNotification)),
            Obx(() => _SettingWidget(
                description: "위치 기반 서비스 이용 동의",
                enabled: controller.acceptLocationUsage.value,
                onChanged: controller.acceptLocationUsage)),
            Obx(() => _SettingWidget(
                description: "다크 모드",
                enabled: controller.darkMode.value,
                onChanged: controller.darkMode))
          ].map((e) => Padding(
                padding: EdgeInsets.only(
                    bottom: context.heightTransformer(dividedBy: 20)),
                child: e,
              ))
        ],
      )),
    );
  }
}

class _SettingWidget extends StatelessWidget {
  final String description;
  final bool enabled;
  final ValueChanged<bool> onChanged;

  const _SettingWidget(
      {Key? key,
      required this.description,
      required this.enabled,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          description,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        const Expanded(child: SizedBox.shrink()),
        AppSwitch(value: enabled, onChanged: onChanged)
      ],
    );
  }
}
