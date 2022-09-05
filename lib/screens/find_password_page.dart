import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/controllers/find_password_controller.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/bottom_setter.dart';
import 'package:itnun/widgets/expanded_scroll.dart';
import 'package:itnun/widgets/title_subject_widget.dart';

class FindpswdPage extends GetView<FindpswdController> {
  const FindpswdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:createDefaultAppBar(),
      body:ExpandedSingleChildScrollView(
        child:GestureDetector(
          behavior:HitTestBehavior.opaque,
          onTap:FocusScope.of(context).unfocus,
          child:AppPadding(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitleSubjectWidget(
                    title: "회원가입때 사용한\n이메일을 입력해주세요",
                    subject: "비밀번호 변경 메일을 보내드릴게요."
                ),
                AppTextField(
                  controller: controller.emailController,
                  validator:controller.isEmailValid,
                  label: "이메일",
                  keyboardType: TextInputType.emailAddress,
                  onChanged: controller.emailLiveText
                ),
                SizedBox(
                  height:context.heightTransformer(dividedBy :100),
                ),
                BottomSetter(
                  children: [
                    Obx((){
                      bool valid = controller.isValid();
                      return AppButton(
                        text: "다음",
                        textColor: valid ? Colors.white : Colors.black,
                        backgroundColor: valid ? appColor : const Color(0xFFF1F1F1),
                        onPressed: valid ? controller.verifyfindpswd : null
                      );
                    }),
                  ],
                )
              ],
            )
          )
        )
      )
    );
  }
}
