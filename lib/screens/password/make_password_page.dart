import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/controllers/make_password_controller.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/bottom_setter.dart';
import 'package:itnun/widgets/expanded_scroll.dart';
import 'package:itnun/widgets/title_subject_widget.dart';

class MakePasswordPage extends GetView<MakePasswordController> {
  const MakePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                        title: "새 비밀번호를\n입력해주세요",
                        subject: "비밀번호는 8자 이상부터 사용할 수 있어요."),
                    AppTextField(
                      onChanged: controller.passwordLiveText,
                      validator: controller.isPasswordValid,
                      label: "비밀번호 입력",
                      obscureText: true,
                      controller: controller.passwordController,
                    ),
                    SizedBox(
                      height: context.heightTransformer(dividedBy: 100),
                    ),
                    AppTextField(
                      onChanged: controller.passwordAgainLiveText,
                      validator: controller.isPasswordAgainValid,
                      label: "비밀번호 확인",
                      obscureText: true,
                    ),
                    SizedBox(
                      height: context.heightTransformer(dividedBy: 100),
                    ),
                    BottomSetter(
                      children: [
                        Obx(() {
                          bool valid = controller.isValid();
                          return AppButton(
                              text: "변경 완료하기",
                              textColor: valid ? Colors.white : Colors.black,
                              backgroundColor:
                                  valid ? appColor : const Color(0xFFF1F1F1),
                              onPressed: valid ? controller.login : null);
                        }),
                      ],
                    )
                  ],
                )))));
  }
}
