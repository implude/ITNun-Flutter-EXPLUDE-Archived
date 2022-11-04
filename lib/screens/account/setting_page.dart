import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:itnun/controllers/setting_controller.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/bottom_setter.dart';
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
            // Obx(() => _SettingWidget(
            //     description: "위치 기반 서비스 이용 동의",
            //     enabled: controller.acceptLocationUsage.value,
            //     onChanged: controller.acceptLocationUsage)),
            // Obx(() => _SettingWidget(
            //     description: "다크 모드",
            //     enabled: controller.darkMode.value,
            //     onChanged: controller.darkMode))
          ].map((e) => Padding(
                padding: EdgeInsets.only(
                    bottom: context.heightTransformer(dividedBy: 20)),
                child: e,
              )),
          TimeSelectWidget(
            description: "푸시 알림 시간대",
            startTime: DateTime(0, 0, 0, 06, 0),
            endTime: DateTime(0, 0, 0, 20, 0),
          ),
          SizedBox(
            height: context.heightTransformer(dividedBy: 25),
          ),
          TosBox(
            description: "이용 약관",
            padding: 12.5,
            onPressed: () {
              Get.toNamed("/itnunpolicy");
            },
          ),
          TosBox(
            description: "개인정보처리방침",
            padding: 12.5,
            onPressed: () {
              Get.toNamed("/privatepolicy");
            },
          ),
          TosBox(
            description: "개인정보 수집 및 이용 동의서 \n(필수)",
            padding: 10,
            onPressed: () {
              Get.toNamed("/collect/necessary");
            },
          ),
          TosBox(
            description: "개인정보 수집 및 이용 동의서 \n(선택)",
            padding: 10,
            onPressed: () {
              Get.toNamed("/collect/optional");
            },
          ),
          BottomSetter(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Get.toNamed("/withdraw/confirm");
                    },
                    child: const Text("회원탈퇴",
                        style: TextStyle(
                          color: Color(0xffF69393),
                          fontSize: 16,
                        )),
                  )
                ],
              )
            ],
          ),
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

class TimeSelectWidget extends StatelessWidget {
  final DateTime startTime;
  final DateTime endTime;
  final String description;

  const TimeSelectWidget(
      {Key? key,
      required this.startTime,
      required this.endTime,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          description,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        const Expanded(child: SizedBox.shrink()),
        Text(
            "${DateFormat("HH:mm").format(startTime)} ~ ${DateFormat("HH:mm").format(endTime)}",
            style: const TextStyle(
              color: Color(0xff3C65F8),
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ))
      ],
    );
  }
}

class TosBox extends StatelessWidget {
  final String description;
  final double padding;
  final VoidCallback? onPressed;

  const TosBox({Key? key,
  required this.description,
  required this.padding,
  required this.onPressed,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          description,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        const Expanded(child: SizedBox.shrink()),
        TextButton(
          onPressed: onPressed,
          child: const Text("전문보기",
              style: TextStyle(
                color: Color(0xFFB1B1B1),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              )),
        ),
        SizedBox(
          height:context.heightTransformer(dividedBy: padding),
        ),
      ],
    );
  }
}
