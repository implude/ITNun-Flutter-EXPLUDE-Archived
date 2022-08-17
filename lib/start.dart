import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Container(
              child: Column(
                children: [
                  const Text("사람과 정책을 잇는.",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/logo_outlined.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "잇는",
                        style: TextStyle(
                            fontSize: 44, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            SizedBox(
              height: 60,
              width: 350,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                      ),
                      side: const BorderSide(
                        width: 2.0,
                        color: Color(0xff3C65F8),
                      )),
                  onPressed: () {},
                  child: const Text(
                    "로그인",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff3C65F8),
                        fontWeight: FontWeight.bold),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 60,
              width: 350,
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    backgroundColor: const Color(0xff3C65F8),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "회원가입",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
