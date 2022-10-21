import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/controllers/user_info_controller.dart';
import 'package:itnun/models/user_info.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/bottom_setter.dart';
import 'package:itnun/widgets/expanded_scroll.dart';
import 'package:itnun/widgets/title_subject_widget.dart';

class _UserInfoWidget extends StatelessWidget {
  final String label;
  final Widget child;

  const _UserInfoWidget({Key? key, required this.label, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.heightTransformer(dividedBy: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFE1E1E1), width: 2)),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: context.widthTransformer(dividedBy: 9.75)),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(label,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF676767))),
          child
        ]),
      ),
    );
  }
}

class _UserInfoTextField extends StatelessWidget {
  final TextEditingController controller;

  const _UserInfoTextField({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: context.widthTransformer(dividedBy: 5),
        child: TextField(
            controller: controller,
            decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "이곳에 입력",
                hintStyle: TextStyle(color: Color(0xFFD1D1D1)))));
  }
}

typedef MessageConverter<T> = String Function(T value);

class UserInfoPage extends GetView<UserInfoController> {
  const UserInfoPage({Key? key}) : super(key: key);

  Widget _createDropdown<T>(
          List<T> values, Rxn<T> value, MessageConverter<T> converter) =>
      DropdownButtonHideUnderline(
        child: Obx(
          () => DropdownButton<T>(
            value: value.value,
            items: values
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(converter(e)),
                    ))
                .toList(),
            onChanged: (val) {
              if (val != null) value(val);
            },
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    final items = [
      _UserInfoWidget(
          label: "취업상태",
          child: _createDropdown<UserJob>(
              UserJob.values, controller.jobValue, (value) => value.message)),
      _UserInfoWidget(
          label: "교급",
          child: _createDropdown<UserStage>(UserStage.values,
              controller.academicValue, (value) => value.message)),
      _UserInfoWidget(
          label: "학과 / 전공",
          child: _createDropdown<UserDepartment>(UserDepartment.values,
              controller.specializationValue, (value) => value.message)),
      _UserInfoWidget(
          label: "창업 준비생이에요.",
          child: Obx(() => AppSwitch(
              value: controller.isPreparing.value,
              onChanged: controller.isPreparing)))
    ];

    final widgets = <Widget>[];

    items.forEachIndexed((index, element) {
      widgets.add(element);
      if (index != items.length - 1) {
        widgets.add(SizedBox(height: context.heightTransformer(dividedBy: 80)));
      }
    });

    return Scaffold(
        appBar: createDefaultAppBar(),
        body: ExpandedSingleChildScrollView(
            child: FocusUnSetter(
          child: AppPadding(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                const TitleSubjectWidget(
                    title: "더 나은 서비스를 위해\n정보를 입력해주세요",
                    subject: "이 정보는 나중에 변경할 수 있어요"),
                ...widgets,
                BottomSetter(children: [
                  Obx(() {
                    final isValid = controller.isValid();

                    return AppButton(
                        text: "완료",
                        textColor: isValid ? Colors.white : Colors.black,
                        backgroundColor:
                            isValid ? appColor : const Color(0xFFF1F1F1),
                        onPressed: isValid ? controller.next : null);
                  })
                ])
              ])),
        )));
  }
}
