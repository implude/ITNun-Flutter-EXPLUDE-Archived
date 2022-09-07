import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';

import '../constants.dart';

class DetailSearch extends StatelessWidget {
  const DetailSearch({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: createDefaultAppBar(),
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap:FocusScope.of(context).unfocus,
          behavior: HitTestBehavior.opaque,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 26,
              vertical: 39,
            ),
              child: Container(
                height: 1763,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                SizedBox(
                  height: 31,
                ),

                Text("상세검색",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),),
                SizedBox(
                  height: 31,
                ),
                Container(
                  height: 368,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: Color(0xffC5D1FD),width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(42, 0, 0, 0),
                              child: Text("취업상태",style: TextStyle(fontWeight: FontWeight.w600,fontFamily: "Pretendard",fontSize: 16),),
                            ),
                            Flexible(flex: 1,child: Container()),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 28, 0),
                              child: Text("취업상태 전체",style: TextStyle(fontWeight: FontWeight.w400,fontFamily: "Pretendard",fontSize: 14),),
                            ),


                          ],
                        ),
                        SizedBox(height: 23,),
                        RawMaterialButton(
                            onPressed: (){},
                            child: Container(
                              decoration: BoxDecoration(color: appColor,borderRadius: BorderRadius.circular(7)),
                              width: 298,
                              height: 40,
                            child: Center(child: Text("취업상태 전체",style: TextStyle(color: Colors.white,fontFamily: "Pretendard",fontWeight: FontWeight.w600,fontSize: 14),)),
                            ),
                          ),


                        Row(
                          children: [
                            createbutton(boxcolor: Colors.transparent, label: "재직자", textcolor: Colors.black,strokecolor: Color(0xffC5D1FD)),
                            createbutton(boxcolor: Colors.transparent, label: "자영업자", textcolor: Colors.black,strokecolor: Color(0xffC5D1FD),),
                          ],
                        ),
                        Row(
                          children: [
                            createbutton(boxcolor: Colors.transparent, label: "미취업자", textcolor: Colors.black,strokecolor: Color(0xffC5D1FD)),
                            createbutton(boxcolor: Colors.transparent, label: "프리랜서", textcolor: Colors.black,strokecolor: Color(0xffC5D1FD),),
                          ],
                        ),
                        Row(
                          children: [
                            createbutton(boxcolor: Colors.transparent, label: "일용근로자", textcolor: Colors.black,strokecolor: Color(0xffC5D1FD)),
                            createbutton(boxcolor: Colors.transparent, label: "(예비)창업자", textcolor: Colors.black,strokecolor: Color(0xffC5D1FD),),
                          ],
                        ),
                        Row(
                          children: [
                            createbutton(boxcolor: Colors.transparent, label: "단기근로자", textcolor: Colors.black,strokecolor: Color(0xffC5D1FD)),
                            createbutton(boxcolor: Colors.transparent, label: "영농종사자", textcolor: Colors.black,strokecolor: Color(0xffC5D1FD),),
                          ],
                        ),
                        RawMaterialButton(
                          onPressed: (){},
                          child: Container(
                            decoration: BoxDecoration(color: Colors.transparent,borderRadius: BorderRadius.circular(7),border: Border.all(color: Color(0xffC5D1FD),width: 1)),
                            width: 298,
                            height: 40,
                            child: Center(child: Text("제한없음",style: TextStyle(color: Colors.black,fontFamily: "Pretendard",fontWeight: FontWeight.w600,fontSize: 14),)),
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 368,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: Color(0xffC5D1FD),width: 3),

                  ),
                ),
              SizedBox(
                height: 10,
              ),
                Container(
                  height: 324,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: Color(0xffC5D1FD),width: 3),

                  ),
                ),
              SizedBox(
                height: 10,
              ),
                Container(
                  height: 236,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: Color(0xffC5D1FD),width: 3),

                  ),
                ),
              SizedBox(
                height: 10,
              ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: Color(0xffC5D1FD),width: 3),

                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    border: Border.all(color: Color(0xffC5D1FD),width: 3),

                  ),
                ),
              SizedBox(
                height: 20,
              ),
              RawMaterialButton(

                onPressed: (){},
                child: Container(
                  height: 50,
                  width: 100,
                  child: Center(child: Text("검색",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,fontFamily: "Pretendard"),)),
                  decoration: BoxDecoration(
                    color: appColor,
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
              ),


            ],
                ),
              )
          )
        ),
      ),
    );
  }
}

class createbutton extends StatelessWidget {
  const createbutton({Key? key,  required this.label,required this.boxcolor, required this.textcolor, required this.strokecolor}) : super(key: key);
  final Color boxcolor;
  final Color textcolor;
  final Color strokecolor;
  final String label;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: (){
        Get.toNamed("/none");
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:2,horizontal: 2),
        child: Container(
          width: 147,
          height: 40,
          decoration: BoxDecoration(
            color: boxcolor,
            borderRadius: BorderRadius.circular(7),
            border: Border.all(color: strokecolor,width: 1),
          ),
          child: Center(
            child: Text("$label",style: TextStyle(color: textcolor,fontFamily: "Pretendard",fontSize: 14,fontWeight: FontWeight.w600),),
          ),

        ),
      ),
    );
  }
}
