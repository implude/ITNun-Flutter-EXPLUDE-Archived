import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/controllers/user_info_controller.dart';
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
                label: Text("이곳에 입력",
                    style: TextStyle(color: Color(0xFFD1D1D1))))));
  }
}

class UserInfoPage extends GetView<UserInfoController> {
  const UserInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      _UserInfoWidget(
          label: "직업",
          child: _UserInfoTextField(controller: controller.jobController)),
      _UserInfoWidget(
          label: "교급",
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
                icon: const Icon(Icons.keyboard_arrow_down,
                    color: Color(0xFFD1D1D1)),
                hint: const Text("드롭다운 메뉴",
                    style: TextStyle(color: Color(0xFFD1D1D1))),
                value: controller.stageValue.value,
                items: controller.stageItems
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: controller.stageValue),
          )),
      _UserInfoWidget(
          label: "학과 / 전공",
          child:
              _UserInfoTextField(controller: controller.departmentController)),
      _UserInfoWidget(
          label: "창업 준비생이에요.",
          child: Obx(() => FlutterSwitch(
              width: context.widthTransformer(dividedBy: 9),
              height: context.heightTransformer(dividedBy: 36),
              activeColor: const Color(0xFF3C65F8),
              inactiveColor: Colors.transparent,
              inactiveToggleColor: const Color(0xFFD1D1D1),
              inactiveSwitchBorder: Border.all(color: const Color(0xFFD1D1D1)),
              toggleSize: 16,
              padding: 3,
              value: controller.isReady.value,
              onToggle: controller.isReady)))
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
            child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: FocusScope.of(context).unfocus,
                child: AppPadding(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      const TitleSubjectWidget(
                          title: "더 나은 서비스를 위해\n정보를 입력해주세요",
                          subject: "이 입력은 건너뛸 수 있어요."),
                      ...widgets,
                      BottomSetter(children: [
                        AppButton(
                            text: "완료",
                            textColor: Colors.white,
                            backgroundColor: appColor,
                            onPressed: controller.next)
                      ])
                    ])))));
  }
}
