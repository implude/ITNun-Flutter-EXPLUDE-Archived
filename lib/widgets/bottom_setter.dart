import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSetter extends StatelessWidget {
  // 위젯 하나를 페이지의 맨 아래로 설정해줌
  final List<Widget> children;

  const BottomSetter({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding:
          EdgeInsets.only(bottom: context.heightTransformer(dividedBy: 50)),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: children),
    ));
  }
}
