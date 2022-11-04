import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/bottom_setter.dart';
import 'package:itnun/widgets/title_subject_widget.dart';

class WithDrawConfirmPage extends StatelessWidget {
  const WithDrawConfirmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: createDefaultAppBar(),
        body: AppPadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleSubjectWidget(
                title: "회원 탈퇴를 진행하실건가요?\n기존 데이터는 모두 삭제되요.",
                subject: "회원탈퇴 후에는 복구가 불가능해요.",
              ),
              BottomSetter(
                children: [
                  Row(
                    children: [
                      _ConfirmButton(
                          outlineColor: const Color(0xffDA2929),
                          description: "네",
                          onPressed: () {
                            Get.toNamed("/withdraw/end");
                          }),
                      SizedBox(width: context.widthTransformer(dividedBy: 30)),
                      _ConfirmButton(
                          outlineColor: const Color(0xff3C65F8),
                          description: "아니요",
                          onPressed: () {
                            Get.back();
                          }),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

class _ConfirmButton extends StatelessWidget {
  final Color outlineColor;
  final String description;
  final VoidCallback? onPressed;

  const _ConfirmButton(
      {Key? key,
      required this.outlineColor,
      required this.description,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SizedBox(
      height: context.heightTransformer(dividedBy: 14),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
            side: BorderSide(
              width: 2,
              color: outlineColor,
            ),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)))),
        child: Text(
          description,
          style: TextStyle(
            color: outlineColor,
            fontSize: 20,
          ),
        ),
      ),
    ));
  }
}
