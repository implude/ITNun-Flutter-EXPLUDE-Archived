import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/widgets/app_button.dart';
import 'package:itnun/widgets/app_textfield.dart';
import 'package:itnun/widgets/bottom_setter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
                onPressed: () => Get.back(),
                icon:
                    const Icon(Icons.arrow_back_ios_new, color: Colors.black)),
            title: Image.asset("assets/images/logo_outlined.png", scale: 2),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0),
        body: LayoutBuilder(
            builder: (context, constraint) => SingleChildScrollView(
                child: ConstrainedBox(
                    constraints:
                        BoxConstraints(minHeight: constraint.maxHeight),
                    child: IntrinsicHeight(
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () => FocusScope.of(context).unfocus(),
                        child: Center(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                              SizedBox(
                                  height:
                                      context.heightTransformer(dividedBy: 9)),
                              const Text("로그인",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 36)),
                              SizedBox(
                                  height:
                                      context.heightTransformer(dividedBy: 10)),
                              const AppTextField(label: "아이디"),
                              SizedBox(
                                  height:
                                      context.heightTransformer(dividedBy: 60)),
                              const AppTextField(
                                  label: "비밀번호", obscureText: true),
                              SizedBox(
                                  height: context.heightTransformer(
                                      dividedBy: 120)),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text("비밀번호를 잊으셨나요?",
                                        style: TextStyle(
                                            color: Color(0xFFC4C4C4))),
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text("비밀번호 찾기",
                                            style: TextStyle(
                                                color: Color(0xFF343434))))
                                  ]),
                              BottomSetter(children: [
                                AppButton(
                                    text: "로그인",
                                    textColor: Colors.white,
                                    backgroundColor: appColor,
                                    onPressed: () {})
                              ])
                            ])),
                      ),
                    )))));
  }
}
