import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/widgets/appbar_widgets.dart';

class TestMain extends StatelessWidget {
  const TestMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(appColor)),
                onPressed: () {
                  Get.toNamed("/menu");
                },
                child: const Text(
                  "메뉴",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                )),
            const SizedBox(
              height: 30,
            ),
            TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(appColor)),
                onPressed: () {
                  Get.toNamed("/totalSearch");
                },
                child: const Text(
                  "통합검색",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                )),
            const SizedBox(
              height: 30,
            ),
            TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(appColor)),
                onPressed: () {
                  Get.toNamed("/detailSearch");
                },
                child: const Text(
                  "상세검색",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                )),
            const SizedBox(
              height: 30,
            ),
            TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(appColor)),
                onPressed: () {
                  Get.toNamed("/cheapMarketSearch");
                },
                child: const Text(
                  "착한가게 찾기",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                )),
            const SizedBox(
              height: 30,
            ),
            TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(appColor)),
                onPressed: () {
                  Get.toNamed("/notification");
                },
                child: const Text(
                  "공지사항",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                )),
          ],
        ),
      ),
    );
  }
}
