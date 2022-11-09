import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/controllers/my_info_edit_controller.dart';
import 'package:itnun/models/user_info.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/title_subject_widget.dart';

class MyInfoEditPage extends GetView<MyInfoEditController> {
  const MyInfoEditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(
        actions: [
          IconButton(
            onPressed: () async {
              await controller.change();
              Get.back();
            },
            icon: const Icon(
              Icons.check,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: FocusUnSetter(
          child: AppPadding(
            child: FutureBuilder(
              future: controller.init(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TitleWidget(title: "내 정보 수정"),
                      ...[
                        _InfoEditWidget(
                            description: "이름",
                            controller: controller.nameController),
                        Obx(() => _InfoEditWidget(
                            description: "지역",
                            value: controller.region.value,
                            items: regions,
                            onValueChanged: controller.region)),
                        Obx(() => _InfoEditWidget(
                              description: "직업",
                              value: controller.job.value.message,
                              items:
                                  UserJob.values.map((e) => e.message).toList(),
                              onValueChanged: (value) => controller.job.value =
                                  UserJob.values.firstWhere(
                                      (element) => element.message == value),
                            )),
                        Obx(() => _InfoEditWidget(
                              description: "교급",
                              value: controller.academic.value.message,
                              items: UserStage.values
                                  .map((e) => e.message)
                                  .toList(),
                              onValueChanged: (value) => controller
                                      .academic.value =
                                  UserStage.values.firstWhere(
                                      (element) => element.message == value),
                            )),
                        Obx(() => _InfoEditWidget(
                              description: "학과 / 전공",
                              value: controller.specialization.value.message,
                              items: UserDepartment.values
                                  .map((e) => e.message)
                                  .toList(),
                              onValueChanged: (value) => controller
                                      .specialization.value =
                                  UserDepartment.values.firstWhere(
                                      (element) => element.message == value),
                            )),
                        Obx(() => _InfoEditWidget(
                              description: "창업 준비생이에요.",
                              enabled: controller.preStartup.value,
                              onChanged: controller.preStartup,
                            ))
                      ].map((e) => Padding(
                            padding: EdgeInsets.only(
                                bottom:
                                    context.heightTransformer(dividedBy: 30)),
                            child: e,
                          ))
                    ],
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _InfoEditWidget extends StatelessWidget {
  final String description;

  // TextField
  final TextEditingController? controller;

  // DropDown
  final String? value;
  final List<String>? items;
  final ValueChanged<String>? onValueChanged;

  // Switch
  final bool? enabled;
  final ValueChanged<bool>? onChanged;

  const _InfoEditWidget(
      {Key? key,
      required this.description,
      this.controller,
      this.items,
      this.onValueChanged,
      this.enabled,
      this.onChanged,
      this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget child;
    if (controller != null) {
      child = ConstrainedBox(
        constraints: BoxConstraints(
            minWidth: context.widthTransformer(dividedBy: 5),
            maxWidth: context.widthTransformer(dividedBy: 2)),
        child: IntrinsicWidth(
          child: TextField(
            textAlign: TextAlign.right,
            controller: controller,
            style: const TextStyle(fontSize: 16),
            decoration: const InputDecoration(border: InputBorder.none),
          ),
        ),
      );
    } else if (items != null) {
      child = DropdownButtonHideUnderline(
        child: DropdownButton<String>(
            style: const TextStyle(fontSize: 16, color: Colors.black),
            icon:
                const Icon(Icons.keyboard_arrow_down, color: Color(0xFFD1D1D1)),
            value: value,
            items: items!
                .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                .toList(),
            onChanged: (value) {
              if (value == null) return;
              onValueChanged!(value);
            }),
      );
    } else {
      child = AppSwitch(value: enabled!, onChanged: onChanged!);
    }

    return Row(
      children: [
        Text(
          description,
          style: const TextStyle(
              color: Color(0xFF676767),
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
        const Expanded(child: SizedBox.shrink()),
        child
      ],
    );
  }
}
