import 'package:flutter/material.dart';
import 'package:itnun/constants.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          body:SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height:50
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width:10,
                    ),
                    IconButton(
                      onPressed: (){
                        Get.toNamed('/');
                      },
                      iconSize:20,
                        icon : Icon(Icons.arrow_back_ios_new)
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/logo_outlined.png"),
                  ],
                ),
                const SizedBox(
                  height:50
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width:5
                    ),
                    const Text("로그인",
                      style: TextStyle(
                        fontSize: 44,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Pretendard"
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height:60,
                  width:350,
                  child: TextField(
                    obscureText : true,
                    decoration: InputDecoration(
                      border :OutlineInputBorder(),
                      hintText: '아이디',
                    ),
                  ),
                ),
                const SizedBox(
                  height:10
                ),
                const SizedBox(
                  height:60,
                  width:350,
                  child: TextField(
                    obscureText : true,
                    decoration: InputDecoration(
                      border :OutlineInputBorder(),
                      hintText: '비밀번호',
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("비밀번호를 잊으셨나요?",
                      style:TextStyle(
                        fontSize: 14,
                        fontFamily: "Pretendard",
                        color :Colors.black12,
                      ),
                    ),
                    TextButton(
                      onPressed: (){
                        //비밀번호 변경 화면
                      },
                      child: const Text("비밀번호 찾기",
                        style:TextStyle(
                          fontSize: 14,
                          fontFamily: "Pretendard",
                          color: Colors.black,
                        )
                      )
                    )
                  ],
                ),
                const SizedBox(
                  height:100,
                ),
                Column(
                  children: [
                    SizedBox(
                        height: 60,
                        width: 350,
                        child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(20))),
                                backgroundColor: appColor),
                            onPressed: () {},
                            child: const Text("로그인",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Pretendard"
                                )
                            )
                        )
                    ),
                  ],
                ),
              ],
            ),
          ),
      ),
    );
  }
}

