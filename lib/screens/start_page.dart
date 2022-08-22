import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/bottom_setter.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: AppPadding(
      child: Column(children: [
        SizedBox(height: context.heightTransformer(dividedBy: 3)),
        const Text("사람과 정책을 잇는.",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: "Pretendard",
            )),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset("assets/images/logo_outlined.png", scale: 1.52),
          const SizedBox(width: 10),
          const Text("잇는",
              style: TextStyle(
                fontSize: 44,
                fontWeight: FontWeight.bold,
                fontFamily: "Pretendard",
              ))
        ]),
        BottomSetter(children: [
          AppButton(
              text: "로그인",
              textColor: appColor,
              backgroundColor: Colors.transparent,
              outlineColor: appColor,
              onPressed: () => Get.toNamed("/login")),
          SizedBox(height: context.heightTransformer(dividedBy: 70)),
          AppButton(
              text: "회원가입",
              textColor: Colors.white,
              backgroundColor: appColor,
              onPressed: () {})
        ])
      ]),
    )));
  }
}
