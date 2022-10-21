import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import '../../widgets/app_widgets.dart';
import '../../widgets/expanded_scroll.dart';
import 'package:itnun/constants.dart';

class CheckedNeedUserInfo extends StatelessWidget {
   CheckedNeedUserInfo({Key? key}) : super(key: key);
  TextEditingController mycontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: ExpandedSingleChildScrollView(
          child:FocusUnSetter(
            child:AppPadding(
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: context.heightTransformer(dividedBy: 35),
                    ),
                    Text("더 나은 서비스를 위해\n정보를 입력해주세요",style: TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold
                    ),),
                    SizedBox(
                      height: context.heightTransformer(dividedBy: 50),

                    ),
                    Text("이 정보는 필수적으로 입력해주세요",style: TextStyle(
                      color: Color(0xffB1B1B1),
                      fontSize: 18,
                      fontWeight:FontWeight.w500,
                    ),),
                      SizedBox(
                        height: context.heightTransformer(dividedBy: 16.8),
                      ),
                    Container(
                      width: context.widthTransformer(dividedBy: 1.153),
                      height: context.heightTransformer(dividedBy: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Color(0xffE1E1E1),width: 2),
                      ),

                      child:Padding(
                        padding: EdgeInsets.only(
                          left: context.widthTransformer(dividedBy: 9.75),
                          top: context.heightTransformer(dividedBy: 35),
                          bottom: context.heightTransformer(dividedBy: 35),
                        ),
                        child: Row(
                          children: [
                            Text("이름",style: TextStyle(
                              color: Color(0xff676767),
                              fontSize: 18,
                              fontWeight:FontWeight.w600,
                            ),),
                            SizedBox(
                              width: context.widthTransformer(dividedBy: 2.653),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: context.widthTransformer(dividedBy: 25)),
                              child: Container(
                                width: context.widthTransformer(dividedBy: 4.82),
                                  child:TextField(
                                    controller: mycontroller,
                                    decoration: InputDecoration(
                                      hintText: "이곳에 입력",
                                      alignLabelWithHint: true,
                                      hintStyle: TextStyle(
                                        color: Color(0xffD1D1D1),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      )
                                    ),
                                  )

                              ),
                            ),


                          ],
                        ),
                      )
                    ),
                    SizedBox(
                      height: context.heightTransformer(dividedBy: 2),
                    ),
                    Container(
                        child: mycontroller.text!=""? AppButton(
                            text: "다음",
                            textColor: Colors.white,
                            backgroundColor: appColor,
                            onPressed: (){
                              Get.toNamed("/userInfo");
                            }
                        )
                            :
                        AppButton(
                            text: "다음",
                            textColor: Colors.black,
                            backgroundColor: Color(0xffF1F1F1),
                            onPressed: (){
                              print(mycontroller.text);
                              Get.snackbar("이름 입력 필요", "이름을 입력해주세요",backgroundColor: Colors.red,colorText: Colors.white);
                            }
                        )

                    )
                  ],
                )
            ),
          )

      ),
    );
  }
}


class UnCheckedNeedUserInfo extends StatelessWidget {
  UnCheckedNeedUserInfo({Key? key}) : super(key: key);
  TextEditingController mycontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: ExpandedSingleChildScrollView(
          child:FocusUnSetter(
            child:AppPadding(
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: context.heightTransformer(dividedBy: 35),
                    ),
                    Text("더 나은 서비스를 위해\n정보를 입력해주세요",style: TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold
                    ),),
                    SizedBox(
                      height: context.heightTransformer(dividedBy: 50),

                    ),
                    Text("이 정보는 필수적으로 입력해주세요",style: TextStyle(
                      color: Color(0xffB1B1B1),
                      fontSize: 18,
                      fontWeight:FontWeight.w500,
                    ),),
                    SizedBox(
                      height: context.heightTransformer(dividedBy: 16.8),
                    ),
                    Container(
                        width: context.widthTransformer(dividedBy: 1.153),
                        height: context.heightTransformer(dividedBy: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Color(0xffE1E1E1),width: 2),
                        ),

                        child:Padding(
                          padding: EdgeInsets.only(
                            left: context.widthTransformer(dividedBy: 9.75),
                            top: context.heightTransformer(dividedBy: 35),
                            bottom: context.heightTransformer(dividedBy: 35),
                          ),
                          child: Row(
                            children: [
                              Text("이름",style: TextStyle(
                                color: Color(0xff676767),
                                fontSize: 18,
                                fontWeight:FontWeight.w600,
                              ),),
                              SizedBox(
                                width: context.widthTransformer(dividedBy: 2.653),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: context.widthTransformer(dividedBy: 25)),
                                child: Container(
                                    width: context.widthTransformer(dividedBy: 4.82),
                                    child:TextField(
                                      controller: mycontroller,
                                      decoration: InputDecoration(
                                          hintText: "이곳에 입력",
                                          alignLabelWithHint: true,
                                          hintStyle: TextStyle(
                                            color: Color(0xffD1D1D1),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          )
                                      ),
                                    )

                                ),
                              ),


                            ],
                          ),
                        )
                    ),
                    SizedBox(
                      height: context.heightTransformer(dividedBy: 2),
                    ),
                    Container(
                        child: mycontroller.text!=""? AppButton(
                            text: "다음",
                            textColor: Colors.white,
                            backgroundColor: appColor,
                            onPressed: (){
                              Get.snackbar("회원가입 완료", "회원가입이 완료되었습니다",backgroundColor: appColor,colorText: Colors.white);
                              Get.offAllNamed("/");
                            }
                        )
                            :
                        AppButton(
                            text: "다음",
                            textColor: Colors.black,
                            backgroundColor: Color(0xffF1F1F1),
                            onPressed: (){
                              Get.snackbar("이름 입력 필요", "이름을 입력해주세요",backgroundColor: Colors.red,colorText: Colors.white);
                            }
                        )

                    )
                  ],
                )
            ),
          )

      ),
    );
  }
}
