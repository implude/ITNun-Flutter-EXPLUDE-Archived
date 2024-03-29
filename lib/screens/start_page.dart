import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/controllers/start_controller.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/bottom_setter.dart';

class StartPage extends GetView<StartController> {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: AppPadding(
      child: FutureBuilder<bool>(
          future: controller.checkToken,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data!) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  Get.offNamed("/main");
                });
                return const SizedBox.shrink();
              }
            } else {
              return const SizedBox.shrink();
            }
            return Column(children: [
              SizedBox(height: context.heightTransformer(dividedBy: 3)),
              const Text("사람과 정책을 잇는.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  )),
              LogoWithText(width: context.widthTransformer(dividedBy: 2.9)),
              BottomSetter(children: [
                AppButton(
                    text: "로그인",
                    textColor: appColor,
                    backgroundColor: Colors.transparent,
                    outlineColor: appColor,
                    onPressed: () => Get.toNamed("/login")), //로그인 버튼
                SizedBox(height: context.heightTransformer(dividedBy: 70)),
                AppButton(
                    text: "회원가입",
                    textColor: Colors.white,
                    backgroundColor: appColor,
                    onPressed: () => Get.toNamed("/signup")) //회원가입 버튼
              ])
            ]);
          }),
    )));
  }
}
