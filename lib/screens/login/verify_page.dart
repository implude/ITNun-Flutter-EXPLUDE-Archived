import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/controllers/verify_controller.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/bottom_setter.dart';
import 'package:itnun/widgets/expanded_scroll.dart';
import 'package:itnun/widgets/title_subject_widget.dart';

class VerifyPage extends GetView<VerifyController> {
  const VerifyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: ExpandedSingleChildScrollView(
        child: FocusUnSetter(
          child: AppPadding(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const TitleSubjectWidget(
                  title: "입력하신 이메일로\n인증번호가 전송되었어요", subject: "메일함에서 확인해주세요."),
              AppTextField(
                  maxLength: 6,
                  onChanged: controller.liveText,
                  keyboardType: TextInputType.number,
                  controller: controller.inputController,
                  label: "인증번호 입력"),
              BottomSetter(children: [
                Obx(() {
                  final valid = controller.isValid();
                  return AppButton(
                      text: "인증하기",
                      textColor: valid ? Colors.white : Colors.black,
                      backgroundColor:
                          valid ? appColor : const Color(0xFFF1F1F1),
                      onPressed: valid ? controller.verify : null);
                })
              ])
            ]),
          ),
        ),
      ),
    );
  }
}
