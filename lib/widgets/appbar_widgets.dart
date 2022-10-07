import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarLogo extends StatelessWidget {
  const AppBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/logo_outlined.png", scale: 2);
  }
}

class AppBarBackButton extends StatelessWidget { // 모든 페이지들의 맨 위에 부분
  const AppBarBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () => Get.back(),
        icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black));
  }
}

PreferredSizeWidget createDefaultAppBar({List<Widget>? actions}) {
  return AppBar(
      leading:
          (Get.rawRoute?.isFirst ?? true) ? null : const AppBarBackButton(),
      title: const AppBarLogo(),
      centerTitle: true,
      actions: actions,
      backgroundColor: Colors.transparent,
      elevation: 0);
}
