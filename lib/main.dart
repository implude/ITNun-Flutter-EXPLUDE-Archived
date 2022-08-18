import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/start.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialRoute: "/login",
        getPages: [
          GetPage(name: "/", page: () => const StartPage()),
          GetPage(name: "/login", page: () => const LoginPage()),
        ]
    );
  }
}
