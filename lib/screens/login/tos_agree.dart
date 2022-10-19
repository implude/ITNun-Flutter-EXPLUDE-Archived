import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/expanded_scroll.dart';
import 'package:itnun/widgets/title_subject_widget.dart';

class CheckOutBox extends HookWidget {
  final String text;

  CheckOutBox(
      {Key? key,
        required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    final isClicked = useState(false);

    return Row(
      children: [
        IconButton(
          onPressed: (){
            isClicked.value = !isClicked.value;
          },
          icon: isClicked.value ? const Icon(Icons.check, color: Color(0xff515151)): const Icon(Icons.check_box_outline_blank,
            color: Color(0xffC1C1C1),)
        ),
        const SizedBox(width:8),
        Text(
            text,
            style: TextStyle(
              color: isClicked.value ? const Color(0xff515151) : const Color(0xffC1C1C1),
              fontSize:24
            )
        ),
        SizedBox(
          height:context.heightTransformer(dividedBy: 20),
        ),
      ],
    );
  }
}

class TosAgree extends StatelessWidget {
  const TosAgree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:createDefaultAppBar(),
      body: ExpandedSingleChildScrollView(
        child: FocusUnSetter(
          child: AppPadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(height: context.heightTransformer(dividedBy: 10)),
                const Text("잇는 서비스 이용약관에\n동의해주세요",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                SizedBox(height: context.heightTransformer(dividedBy: 50)),
                const Text("설정에서 다시 확인할 수 있어요",
                    style: TextStyle(
                        color: Color(0xFFB1B1B1),
                        fontSize: 18,
                        fontWeight: FontWeight.w500)),
                SizedBox(height: context.heightTransformer(dividedBy: 30))
                  ]
                ),
                CheckOutBox(
                  text: "잇는 이용약관 (필수)"
                ),
                CheckOutBox(
                    text: "개인정보처리방침(필수)"
                ),
                CheckOutBox(
                    text: "개인정보처리방침(선택)"
                ),
              ],
            )
          )
        )
      )
    );
  }
}
