import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';

import '../constants.dart';

class DetailSearch extends StatelessWidget {
  const DetailSearch({Key? key}) : super(key: key);
  final appheight = 844;
  final appwidth = 390;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: createDefaultAppBar(),
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap:FocusScope.of(context).unfocus,
          behavior: HitTestBehavior.opaque,
          child: AppPadding(
            child: Column(
              children: [
                SizedBox(
                  height: context.heightTransformer(dividedBy: 21.64),
                ),
                Center(child: Text("상세검색",style: TextStyle(fontFamily: "Pretendard",fontSize: 32,fontWeight: FontWeight.bold),)),
                SizedBox(
                  height: context.heightTransformer(dividedBy: 32.46),
                ),
                Container(
                  width: context.widthTransformer(dividedBy: appwidth/338),
                  height: context.heightTransformer(dividedBy: appheight/374),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: strokeColor,
                      width: 3,
                    ),
                      borderRadius:BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding:EdgeInsets.symmetric(horizontal: context.widthTransformer(dividedBy: appwidth/17),),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: context.widthTransformer(dividedBy: 19.5),vertical: context.heightTransformer(dividedBy: appheight/20)),
                          child: Row(children: [
                            Text("취업상태",style: TextStyle(fontFamily: "Pretendard",fontSize: 16,fontWeight: FontWeight.w600)),
                            Flexible(flex: 1,child: Container()),
                            Text("고른거 뜨게 하기",style: TextStyle(fontFamily: "Pretendard",fontSize: 14,fontWeight: FontWeight.w400)),
                          ],),
                        ),

                        createbox(title: "취업상태 전체", isBig: true),

                        Row(
                          children: [
                            createbox(title: "재직자", isBig: false),
                            SizedBox(width: context.widthTransformer(dividedBy: 390/4),),
                            createbox(title: "자영업자", isBig: false),
                        ],
                        ),
                        Row(
                          children: [
                            createbox(title: "미취업자", isBig: false),
                            SizedBox(width: context.widthTransformer(dividedBy: 390/4),),
                            createbox(title: "프리랜서", isBig: false),
                          ],
                        ),
                        Row(
                          children: [
                            createbox(title: "일용근로자", isBig: false),
                            SizedBox(width: context.widthTransformer(dividedBy: 390/4),),
                            createbox(title: "(예비)창업자", isBig: false),
                          ],
                        ),
                        Row(
                          children: [
                            createbox(title: "단기근로자", isBig: false),
                            SizedBox(width: context.widthTransformer(dividedBy: 390/4),),
                            createbox(title: "영농종사자", isBig: false),
                          ],
                        ),
                        createbox(title: "제한없음", isBig: true),

                        Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_up_outlined,color: Color(0xffD1D1D1),size: 32,))),

                      ],
                    ),

                  ),
                ),//취업상태

                SizedBox(
                  height: context.heightTransformer(dividedBy: appheight/10),
                ),

                Container(
                  width: context.widthTransformer(dividedBy: appwidth/338),
                  height: context.heightTransformer(dividedBy: appheight/374),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: strokeColor,
                      width: 3,
                    ),
                    borderRadius:BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding:EdgeInsets.symmetric(horizontal: context.widthTransformer(dividedBy: appwidth /17),),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: context.widthTransformer(dividedBy: 19.5),right: context.widthTransformer(dividedBy: 19.5),top: context.heightTransformer(dividedBy: appheight/20),bottom: context.heightTransformer(dividedBy: appheight/20),),
                          child: Row(children: [
                            Text("학력",style: TextStyle(fontFamily: "Pretendard",fontSize: 16,fontWeight: FontWeight.w600)),
                            Flexible(flex: 1,child: Container()),
                            Text("고른거 뜨게 하기",style: TextStyle(fontFamily: "Pretendard",fontSize: 14,fontWeight: FontWeight.w400)),
                          ],),
                        ),

                        createbox(title: "학력 전체", isBig: true),

                        Row(
                          children: [
                            createbox(title: "고졸 미만", isBig: false),
                            SizedBox(width: context.widthTransformer(dividedBy: 390/4),),
                            createbox(title: "고교 재학", isBig: false),
                          ],
                        ),
                        Row(
                          children: [
                            createbox(title: "고졸 예정", isBig: false),
                            SizedBox(width: context.widthTransformer(dividedBy: 390/4),),
                            createbox(title: "고교 졸업", isBig: false),
                          ],
                        ),
                        Row(
                          children: [
                            createbox(title: "대학 재학", isBig: false),
                            SizedBox(width: context.widthTransformer(dividedBy: 390/4),),
                            createbox(title: "대졸 예정", isBig: false),
                          ],
                        ),
                        Row(
                          children: [
                            createbox(title: "대학 졸업", isBig: false),
                            SizedBox(width: context.widthTransformer(dividedBy: 390/4),),
                            createbox(title: "석 • 박사", isBig: false),
                          ],
                        ),
                        createbox(title: "제한없음", isBig: true),

                        Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_up_outlined,color: Color(0xffD1D1D1),size: 32,))),

                      ],
                    ),

                  ),
                ),//학력
                SizedBox(
                  height: context.heightTransformer(dividedBy: appheight/10),
                ),

                Container(
                  width: context.widthTransformer(dividedBy: appwidth/338),
                  height: context.heightTransformer(dividedBy: appheight/330),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: strokeColor,
                      width: 3,
                    ),
                    borderRadius:BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding:EdgeInsets.symmetric(horizontal: context.widthTransformer(dividedBy: appwidth/17),),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: context.widthTransformer(dividedBy: 19.5),right: context.widthTransformer(dividedBy: 19.5),top: context.heightTransformer(dividedBy: appheight/20),bottom: context.heightTransformer(dividedBy: appheight/20),),
                          child: Row(children: [
                            Text("특화분야",style: TextStyle(fontFamily: "Pretendard",fontSize: 16,fontWeight: FontWeight.w600)),
                            Flexible(flex: 1,child: Container()),
                            Text("고른거 뜨게 하기",style: TextStyle(fontFamily: "Pretendard",fontSize: 14,fontWeight: FontWeight.w400)),
                          ],),
                        ),

                        createbox(title: "특화분야 전체", isBig: true),

                        Row(
                          children: [
                            createbox(title: "중소기업", isBig: false),
                            SizedBox(width: context.widthTransformer(dividedBy: 390/4),),
                            createbox(title: "여성", isBig: false),
                          ],
                        ),
                        Row(
                          children: [
                            createbox(title: "저소득층", isBig: false),
                            SizedBox(width: context.widthTransformer(dividedBy: 390/4),),
                            createbox(title: "장애인", isBig: false),
                          ],
                        ),
                        Row(
                          children: [
                            createbox(title: "농업인", isBig: false),
                            SizedBox(width: context.widthTransformer(dividedBy: 390/4),),
                            createbox(title: "군인", isBig: false),
                          ],
                        ),
                        Row(
                          children: [
                            createbox(title: "지역인재", isBig: false),
                            SizedBox(width: context.widthTransformer(dividedBy: 390/4),),
                            createbox(title: "제한없음", isBig: false),
                          ],
                        ),
                        Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_up_outlined,color: Color(0xffD1D1D1),size: 32,))),

                      ],
                    ),

                  ),
                ),//특화분야
                SizedBox(
                  height: context.heightTransformer(dividedBy: appheight/10),
                ),

                Container(
                  width: context.widthTransformer(dividedBy: 390/338),
                  height: context.heightTransformer(dividedBy: appheight/243),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: strokeColor,
                      width: 3,
                    ),
                    borderRadius:BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding:EdgeInsets.symmetric(horizontal: context.widthTransformer(dividedBy: 390/17),),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: context.widthTransformer(dividedBy: 19.5),right: context.widthTransformer(dividedBy: 19.5),top: context.heightTransformer(dividedBy: appheight/20),bottom: context.heightTransformer(dividedBy: appheight/20),),
                          child: Row(children: [
                            Text("신청기간",style: TextStyle(fontFamily: "Pretendard",fontSize: 16,fontWeight: FontWeight.w600)),
                            Flexible(flex: 1,child: Container()),
                            Text("고른거 뜨게 하기",style: TextStyle(fontFamily: "Pretendard",fontSize: 14,fontWeight: FontWeight.w400)),
                          ],),
                        ),

                        createbox(title: "기간 전체", isBig: true),

                        Row(
                          children: [
                            createbox(title: "현재 신청 가능", isBig: false),
                            SizedBox(width: context.widthTransformer(dividedBy: 390/4),),
                            createbox(title: "1개월 이내", isBig: false),
                          ],
                        ),
                        Row(
                          children: [
                            createbox(title: "3개월 이내", isBig: false),
                            SizedBox(width: context.widthTransformer(dividedBy: 390/4),),
                            createbox(title: "6개월 이내", isBig: false),
                          ],
                        ),


                        Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_up_outlined,color: Color(0xffD1D1D1),size: 32,))),

                      ],
                    ),

                  ),
                ),//신청기간
                SizedBox(
                  height: context.heightTransformer(dividedBy: appheight/10),
                ),

                Container(
                  width: context.widthTransformer(dividedBy: 390/338),
                  height: context.heightTransformer(dividedBy: appheight/81),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: strokeColor,
                      width: 3,
                    ),
                    borderRadius:BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding:EdgeInsets.symmetric(horizontal: context.widthTransformer(dividedBy: 390/17),),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: context.widthTransformer(dividedBy: 19.5),right: context.widthTransformer(dividedBy: 19.5),top: context.heightTransformer(dividedBy: appheight/20),bottom: context.heightTransformer(dividedBy: appheight/20),),
                          child: Row(children: [
                            Text("나이",style: TextStyle(fontFamily: "Pretendard",fontSize: 16,fontWeight: FontWeight.w600)),
                            Flexible(flex: 1,child: Container()),
                            Text("만",style: TextStyle(fontFamily: "Pretendard",fontSize: 14,fontWeight: FontWeight.w400)),
                            SizedBox(width: context.widthTransformer(dividedBy: 390/12),),
                             SizedBox(
                               width: context.widthTransformer(dividedBy: 390/50),
                               height: context.heightTransformer(dividedBy: appheight/30),
                               child: TextField(
                                  keyboardType: TextInputType.number,
                                  decoration:InputDecoration(
                                    contentPadding: EdgeInsets.fromLTRB(5, 0, 10, 0),



                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6),
                                      borderSide: BorderSide(
                                          color: strokeColor,
                                          width: 1
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6),
                                      borderSide: BorderSide(
                                          color: strokeColor,
                                          width: 1
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6),
                                      borderSide: BorderSide(
                                        color: strokeColor,
                                        width: 1
                                      ),
                                    ),

                                  ),


                            ),
                             ),
                            SizedBox(width: context.widthTransformer(dividedBy: 390/4),),
                            Text("세",style: TextStyle(fontFamily: "Pretendard",fontSize: 14,fontWeight: FontWeight.w400)),
                          ],),
                        ),
                      ],
                    ),

                  ),
                ),//나이
                SizedBox(
                  height: context.heightTransformer(dividedBy: appheight/10),
                ),
                Container(
                  width: context.widthTransformer(dividedBy: 390/338),
                  height: context.heightTransformer(dividedBy: appheight/87),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: strokeColor,
                      width: 3,
                    ),
                    borderRadius:BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding:EdgeInsets.symmetric(horizontal: context.widthTransformer(dividedBy: 390/17),),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: context.widthTransformer(dividedBy: 19.5),right: context.widthTransformer(dividedBy: 19.5),top: context.heightTransformer(dividedBy: appheight/20),bottom: context.heightTransformer(dividedBy: appheight/20),),
                          child: Row(children: [
                            Text("키워드",style: TextStyle(fontFamily: "Pretendard",fontSize: 16,fontWeight: FontWeight.w600)),
                            Flexible(flex: 1,child: Container()),
                            SizedBox(
                              width: context.widthTransformer(dividedBy: 390/100),
                              height: context.heightTransformer(dividedBy: appheight/40),

                              child: TextField(

                                decoration:InputDecoration(

                                  hintText: "이곳에 입력",


                                ),


                              ),
                            ),

                          ],),
                        ),
                      ],
                    ),

                  ),
                ),//키워드

                SizedBox(height: context.heightTransformer(dividedBy: appheight/20),),
                RawMaterialButton(
                    onPressed: (){
                      Get.toNamed("/detailsearched");
                    },
                    child:
                    Container(
                      height: context.heightTransformer(dividedBy: appheight/50),
                      width: context.widthTransformer(dividedBy: 390/100),
                      child: Center(child: Text("검색",style: TextStyle(fontFamily: "Pretendard",fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white)),),
                  decoration: BoxDecoration(
                    color: appColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                )
                ),
                SizedBox(
                  height: context.heightTransformer(dividedBy:appheight/26),
                ),
              ],
            ),
          )

          ),
        ),

    );
  }
}
class createbox extends StatelessWidget {
  const createbox({Key? key, required this.title, required this.isBig}) : super(key: key);

  final String title;
  final bool isBig;
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if(isBig == true)
          {
            return
              RawMaterialButton(
                onPressed: (){},
                child: Container(
                width: context.widthTransformer(dividedBy: 390/298),
                height: context.heightTransformer(dividedBy: 21.1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: strokeColor,width: 1),
                ),
                child: Center(child: Text("${title}",style: TextStyle(fontFamily: "Pretendard",fontSize: 14,fontWeight: FontWeight.w600),),),
            ),
              );
          }
        else{
            return
              RawMaterialButton(
                onPressed: (){},
                child: Container(
                width: context.widthTransformer(dividedBy: 390/147),
                height: context.heightTransformer(dividedBy: 21.1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: strokeColor,width: 1),
                ),
                child: Center(child: Text("${title}",style: TextStyle(fontFamily: "Pretendard",fontSize: 14,fontWeight: FontWeight.w600),),),
            ),
              );
          }
      }
    );
  }
}


