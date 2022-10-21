import 'package:get/get.dart';
import 'package:itnun/constants.dart';
import 'package:flutter/material.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/bottom_setter.dart';
import 'package:itnun/widgets/title_subject_widget.dart';

class WithdrawEndPage extends StatelessWidget {
  const WithdrawEndPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: AppPadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleSubjectWidget(
              title: "정상적으로 회원탈퇴되었어요.",
              subject: "이용하시려면 다시 회원가입해주세요."
            ),
            BottomSetter(
              children: [
                AppButton(
                  text: "시작 페이지로 이동",
                  textColor: Colors.white,
                  backgroundColor: appColor,
                  onPressed: () {
                    Get.toNamed("/");
                    // 계정 탈퇴
                  }
                ),
              ]
            ),
          ],
        ),
      )
    );
  }
}
