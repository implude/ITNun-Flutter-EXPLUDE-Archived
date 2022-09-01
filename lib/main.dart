import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/controllers/bindings/login_binding.dart';
import 'package:itnun/controllers/bindings/make_new_password_binding.dart';
import 'package:itnun/controllers/bindings/signup_binding.dart';
import 'package:itnun/controllers/bindings/user_info_binding.dart';
import 'package:itnun/controllers/bindings/verify_binding.dart';
import 'package:itnun/controllers/bindings/find_password_binding.dart';
import 'package:itnun/controllers/bindings/verify_find_password_binding.dart';
import 'package:itnun/controllers/bindings/make_new_password_binding.dart';
import 'package:itnun/screens/find_password_page.dart';
import 'package:itnun/screens/login_page.dart';
import 'package:itnun/screens/signup_page.dart';
import 'package:itnun/screens/start_page.dart';
import 'package:itnun/screens/user_info_page.dart';
import 'package:itnun/screens/verify_page.dart';
import 'package:itnun/screens/notification_page.dart';
import 'package:itnun/screens/verify_find_password_page.dart';
import 'package:itnun/screens/make_new_password_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Pretendard"),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const StartPage()),
        GetPage(
            name: "/login",
            page: () => const LoginPage(),
            binding: LoginBinding()),
        GetPage(
            name: "/verify",
            page: () => const VerifyPage(),
            binding: VerifyBinding()),
        GetPage(
            name: "/signup",
            page: () => const SignUpPage(),
            binding: SignUpBinding()),
        GetPage(
            name: "/userInfo",
            page: () => const UserInfoPage(),
            binding: UserInfoBinding()),
        GetPage(
            name: "/notification",
            page: () => NotificationPage()),
        GetPage(
            name: "/findpswd",
            page: () => const FindpswdPage(),
            binding: FindpswdBinding()),
        GetPage(
            name: "/verifyfindpswd",
            page: () => const Verifyfindpswd(),
            binding: VerifyfindpswdBinding()),
        GetPage(
            name: "/makenewpswd",
            page: () => const Makenewpswd(),
            binding: Makenewpswdbinding()),
      ],
    );
  }
}
