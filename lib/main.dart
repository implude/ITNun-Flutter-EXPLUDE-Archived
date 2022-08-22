import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/screens/login_page.dart';
import 'package:itnun/screens/start_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: "Pretendard"),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const StartPage()),
        GetPage(name: "/login", page: () => const LoginPage())
      ],
    );
  }
}
