import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarLogo extends StatelessWidget {
  const AppBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/images/logo_outlined.png", scale: 2);
  }
}

class AppBarBackButton extends StatelessWidget {
  const AppBarBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () => Get.back(),
        icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black));
  }
}

PreferredSizeWidget createDefaultAppBar() => AppBar(
    leading: const AppBarBackButton(),
    title: const AppBarLogo(),
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0);
