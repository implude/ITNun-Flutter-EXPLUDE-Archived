import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/expanded_scroll.dart';
import 'package:itnun/widgets/title_subject_widget.dart';
class TosAgree extends StatefulWidget {
  const TosAgree({Key? key}) : super(key: key);

  @override
  State<TosAgree> createState() => _TosAgreeState();
}

class _TosAgreeState extends State<TosAgree> {
  bool _ischecked1 = false;
  bool _ischecked2 = false;
  bool _ischecked3 = false;
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
                      fillColor: _ischecked1 ? MaterialStatePropertyAll(Colors.transparent):MaterialStatePropertyAll(Color(0xffC1C1C1)),
                      checkColor: Color(0xff515151),
                    ),

                    const SizedBox(width:8),
                    RawMaterialButton(
                      onPressed: (){
                        Get.toNamed("/itnunpolicy");
                      },
                      child: Text(
                          "잇는 이용약관",
                          style: TextStyle(
                              color: _ischecked1 ? const Color(0xff515151) : const Color(0xffC1C1C1),
                              fontSize:24
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
                      fillColor: _ischecked2 ? MaterialStatePropertyAll(Colors.transparent):MaterialStatePropertyAll(Color(0xffC1C1C1)),
                      checkColor: Color(0xff515151),


                    ),

                    const SizedBox(width:8),
                    RawMaterialButton(
                      onPressed: (){
                        Get.toNamed("/privatepolicy");
                      },
                      child: Text(
                          "개인정보처리방침(필수)",
                          style: TextStyle(
                              color: _ischecked2 ? const Color(0xff515151) : const Color(0xffC1C1C1),
                              fontSize:24
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
                      fillColor: _ischecked3 ? MaterialStatePropertyAll(Colors.transparent):MaterialStatePropertyAll(Color(0xffC1C1C1)),
                      checkColor: Color(0xff515151),


                    ),

                    const SizedBox(width:8),
                    RawMaterialButton(
                      onPressed: (){
                        Get.toNamed("/privatepolicy");
                      },
                      child: Text(
                          "개인정보처리방침(선택)",
                          style: TextStyle(
                              color: _ischecked3 ? const Color(0xff515151) : const Color(0xffC1C1C1),
                              fontSize:24
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
                  child: _ischecked1 && _ischecked2 ? AppButton(
                      text: "다음",
                      textColor: Colors.white,
                      backgroundColor: appColor,
                      onPressed: (){
                        _ischecked3 ? Get.toNamed("/needuserinfo") : Get.toNamed("/uncheckeduserinfo");
                      }
                  )
                      :
                  AppButton(
                      text: "다음",
                      textColor: Colors.black,
                      backgroundColor: Color(0xffF1F1F1),
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
