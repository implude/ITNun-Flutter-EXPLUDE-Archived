import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/controllers/signup_controller.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/bottom_setter.dart';
import 'package:itnun/widgets/expanded_scroll.dart';

class SignUpPage extends GetView<SignUpController> {
  const SignUpPage({Key? key}) : super(key: key);

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
                SizedBox(height: context.heightTransformer(dividedBy: 10)),
                const Text("이메일과 비밀번호를\n입력해주세요",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                SizedBox(height: context.heightTransformer(dividedBy: 50)),
                const Text("비밀번호는 8자 이상부터 사용할 수 있어요.",
                    style: TextStyle(
                        color: Color(0xFFB1B1B1),
                        fontSize: 18,
                        fontWeight: FontWeight.w500)),
                SizedBox(height: context.heightTransformer(dividedBy: 15)),
                AppTextField(
                    controller: controller.emailController,
                    validator: controller.isEmailValid,
                    label: "이메일 입력",
                    keyboardType: TextInputType.emailAddress,
                    onChanged: controller.emailLiveText),
                SizedBox(height: context.heightTransformer(dividedBy: 100)),
                AppTextField(
                    controller: controller.passwordController,
                    validator: controller.isPasswordValid,
                    label: "비밀번호 입력",
                    obscureText: true,
                    onChanged: controller.passwordLiveText),
                SizedBox(height: context.heightTransformer(dividedBy: 100)),
                AppTextField(
                    validator: controller.isPasswordAgainValid,
                    label: "비밀번호 확인",
                    obscureText: true,
                    onChanged: controller.passwordAgainLiveText),
                BottomSetter(children: [
                  Obx(() {
                    bool valid = controller.isValid();

                    return AppButton(
                        text: "다음",
                        textColor: valid ? Colors.white : Colors.black,
                        backgroundColor:
                            valid ? appColor : const Color(0xFFF1F1F1),
                        onPressed: valid ? controller.signup : null);
                  })
                ])
              ])),
        )));
  }
}
