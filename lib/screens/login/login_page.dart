import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/controllers/login_controller.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/bottom_setter.dart';
import 'package:itnun/widgets/expanded_scroll.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: ExpandedSingleChildScrollView(
        child: FocusUnSetter(
          child: AppPadding(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(height: context.heightTransformer(dividedBy: 9)),
              const Text("로그인",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 36)),
              SizedBox(height: context.heightTransformer(dividedBy: 10)),
              AppTextField(
                  controller: controller.idController,
                  label: "아이디",
                  keyboardType: TextInputType.emailAddress), //아이디 입력
              SizedBox(height: context.heightTransformer(dividedBy: 60)),
              AppTextField(
                  controller: controller.passwordController,
                  label: "비밀번호",
                  obscureText: true), //비밀번호 입력
              SizedBox(height: context.heightTransformer(dividedBy: 120)),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text("비밀번호를 잊으셨나요?",
                    style: TextStyle(color: Color(0xFFC4C4C4))),
                TextButton(
                    onPressed: () {
                      Get.toNamed("/password/find");
                    },
                    child: const Text("비밀번호 찾기",
                        style: TextStyle(color: Color(0xFF343434)))) //비밀번호 찾기
              ]),
              BottomSetter(children: [
                AppButton(
                    text: "로그인",
                    textColor: Colors.white,
                    backgroundColor: appColor,
                    onPressed: controller.login),
              ]),
            ]),
          ),
        ),
      ),
    );
  }
}
