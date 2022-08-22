import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/constants.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: [
      SizedBox(
        height: context.heightTransformer(dividedBy: 3),
      ),
      Column(children: [
        const Text("사람과 정책을 잇는.",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontFamily: "Pretendard",
            )),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset("assets/images/logo_outlined.png"),
          const SizedBox(width: 10),
          const Text("잇는",
              style: TextStyle(
                fontSize: 44,
                fontWeight: FontWeight.bold,
                fontFamily: "Pretendard",
              ))
        ])
      ]),
      SizedBox(height: context.heightTransformer(dividedBy: 3.0)),
      SizedBox(
        height: context.heightTransformer(dividedBy: 15),
        width: 350,
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                side: const BorderSide(width: 2.0, color: appColor)),
            onPressed: () {},
            child: const Text(
              "로그인",
              style: TextStyle(
                  fontSize: 20,
                  color: appColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Pretendard"),
            )),
      ),
      const SizedBox(height: 10),
      SizedBox(
          height: context.heightTransformer(dividedBy: 15),
          width: 350,
          child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  backgroundColor: appColor),
              onPressed: () {},
              child: const Text("회원가입",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Pretendard"))))
    ])));
  }
}
