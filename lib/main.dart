import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/controllers/find_password_controller.dart';
import 'package:itnun/controllers/login_controller.dart';
import 'package:itnun/controllers/make_password_controller.dart';
import 'package:itnun/controllers/signup_controller.dart';
import 'package:itnun/controllers/user_info_controller.dart';
import 'package:itnun/controllers/verify_controller.dart';
import 'package:itnun/controllers/verify_find_password_controller.dart';
import 'package:itnun/screens/find_password_page.dart';
import 'package:itnun/screens/login_page.dart';
import 'package:itnun/screens/make_password_page.dart';
import 'package:itnun/screens/menu_page.dart';
import 'package:itnun/screens/notification_page.dart';
import 'package:itnun/screens/signup_page.dart';
import 'package:itnun/screens/start_page.dart';
import 'package:itnun/screens/user_info_page.dart';
import 'package:itnun/screens/verify_find_password_page.dart';
import 'package:itnun/screens/verify_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Pretendard"),
      initialRoute: "/notification",
      getPages: [
        GetPage(name: "/", page: () => const StartPage()),
        GetPage(
            name: "/login",
            page: () => const LoginPage(),
            binding: BindingsBuilder(() {
              Get.lazyPut(() => LoginController());
            })),
        GetPage(
            name: "/verify",
            page: () => const VerifyPage(),
            binding: BindingsBuilder(() {
              Get.lazyPut(() => VerifyController());
            })),
        GetPage(
            name: "/signup",
            page: () => const SignUpPage(),
            binding: BindingsBuilder(() {
              Get.lazyPut(() => SignUpController());
            })),
        GetPage(
            name: "/userInfo",
            page: () => const UserInfoPage(),
            binding: BindingsBuilder(() {
              Get.lazyPut(() => UserInfoController());
            })),
        GetPage(name: "/notification", page: () => NotificationPage()),
        GetPage(
            name: "/password/find",
            page: () => const FindPasswordPage(),
            binding: BindingsBuilder(() {
              Get.lazyPut(() => FindPasswordController());
            })),
        GetPage(
            name: "/password/verifyFind",
            page: () => const VerifyFindPasswordPage(),
            binding: BindingsBuilder(() {
              Get.lazyPut(() => VerifyFindPasswordController());
            })),
        GetPage(
            name: "/password/make",
            page: () => const MakePasswordPage(),
            binding: BindingsBuilder(() {
              Get.lazyPut(() => MakePasswordController());
            })),
        GetPage(name: "/menu", page: () => const MenuPage()),
      ],
    );
  }
}
