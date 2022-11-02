import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/expanded_scroll.dart';
class TosAgree extends StatefulWidget {
  const TosAgree({Key? key}) : super(key: key);

  @override
  State<TosAgree> createState() => _TosAgreeState();
}

class _TosAgreeState extends State<TosAgree> {
  bool _ischecked1 = false;
  bool _ischecked2 = false;
  bool _ischecked3 = false;
  bool _ischecked4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:createDefaultAppBar(),
      body: ExpandedSingleChildScrollView(
        child: FocusUnSetter(
          child: AppPadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(height: context.heightTransformer(dividedBy: 10)),
                const Text("잇는 서비스 이용약관에\n동의해주세요",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                SizedBox(height: context.heightTransformer(dividedBy: 50)),
                const Text("설정에서 다시 확인할 수 있어요",
                    style: TextStyle(
                        color: Color(0xFFB1B1B1),
                        fontSize: 18,
                        fontWeight: FontWeight.w500)),
                SizedBox(height: context.heightTransformer(dividedBy: 30))
                  ]
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _ischecked1,
                      onChanged: (value){
                        setState((){
                          _ischecked1 = value!;
                        });
                      },
                      fillColor: _ischecked1 ? MaterialStateProperty.all(Colors.transparent):MaterialStateProperty.all(const Color(0xffC1C1C1)),
                      checkColor: const Color(0xff515151),
                    ),

                    const SizedBox(width:8),
                    RawMaterialButton(
                      onPressed: (){
                        Get.toNamed("/itnunpolicy");
                      },
                      child: Text(
                          "잇는 이용약관 (필수) ",
                          style: TextStyle(
                              color: _ischecked1 ? const Color(0xff515151) : const Color(0xffC1C1C1),
                              fontSize:20
                          )
                      ),
                    ),
                    SizedBox(
                      height:context.heightTransformer(dividedBy: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _ischecked2,
                      onChanged: (value){
                        setState((){
                          _ischecked2 = value!;
                        });
                      },
                      fillColor: _ischecked2 ? MaterialStateProperty.all(Colors.transparent):MaterialStateProperty.all(const Color(0xffC1C1C1)),
                      checkColor: const Color(0xff515151),


                    ),

                    const SizedBox(width:8),
                    RawMaterialButton(
                      onPressed: (){
                        Get.toNamed("/collect/necessary");
                      },
                      child: Text(
                          "개인정보처리방침(필수)",
                          style: TextStyle(
                              color: _ischecked2 ? const Color(0xff515151) : const Color(0xffC1C1C1),
                              fontSize:20
                          )
                      ),
                    ),
                    SizedBox(
                      height:context.heightTransformer(dividedBy: 20),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Checkbox(
                      value: _ischecked3,
                      onChanged: (value){
                        setState((){
                          _ischecked3 = value!;
                        });
                      },
                      fillColor: _ischecked3 ? MaterialStateProperty.all(Colors.transparent):MaterialStateProperty.all(const Color(0xffC1C1C1)),
                      checkColor: const Color(0xff515151),


                    ),

                    const SizedBox(width:8),
                    RawMaterialButton(
                      onPressed: (){
                        Get.toNamed("/collect/necessary");
                      },
                      child: Text(
                          "개인정보 수집 및 이용 동의서 (필수)",
                          style: TextStyle(
                              color: _ischecked3 ? const Color(0xff515151) : const Color(0xffC1C1C1),
                              fontSize:20
                          )
                      ),
                    ),
                    SizedBox(
                      height:context.heightTransformer(dividedBy: 20),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Checkbox(
                      value: _ischecked4,
                      onChanged: (value){
                        setState((){
                          _ischecked4 = value!;
                        });
                      },
                      fillColor: _ischecked4 ? MaterialStateProperty.all(Colors.transparent):MaterialStateProperty.all(const Color(0xffC1C1C1)),
                      checkColor: const Color(0xff515151),


                    ),

                    const SizedBox(width:8),
                    RawMaterialButton(
                      onPressed: (){
                        Get.toNamed("/collect/optional");
                      },
                      child: Text(
                          "개인정보 수집 및 이용 동의서 (선택)",
                          style: TextStyle(
                              color: _ischecked4 ? const Color(0xff515151) : const Color(0xffC1C1C1),
                              fontSize:20
                          )
                      ),
                    ),
                    SizedBox(
                      height:context.heightTransformer(dividedBy: 20),
                    ),
                  ],
                ),


                SizedBox(
                  height: context.heightTransformer(dividedBy: 840/330),
                ),
                Container(
                  child: _ischecked1 && _ischecked2 && _ischecked3 ? AppButton(
                      text: "다음",
                      textColor: Colors.white,
                      backgroundColor: appColor,
                      onPressed: (){
                        _ischecked4 ? Get.toNamed("/needuserinfo") : Get.toNamed("/uncheckeduserinfo");
                      }
                  )
                      :
                  AppButton(
                      text: "다음",
                      textColor: Colors.black,
                      backgroundColor: const Color(0xffF1F1F1),
                      onPressed: (){
                        Get.snackbar("이용약관 동의", "동의되지 않은 필수 이용 약관이 있습니다.",backgroundColor: Colors.red,colorText: Colors.white);
                      }
                  )

                )
              ],
            )
          )
        )
      )
    );
  }
}
