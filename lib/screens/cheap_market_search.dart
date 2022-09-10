import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/app_widgets.dart';
import '../constants.dart';

class CheapMarketSearch extends StatelessWidget {
  const CheapMarketSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: FocusScope.of(context).unfocus,
          behavior: HitTestBehavior.opaque,
          child: AppPadding(
              child: Column(

                children: [
                  SizedBox(
                    height: context.heightTransformer(dividedBy: 22.10),
                  ),

                  Text("착한가게 찾기",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),),
                  SizedBox(
                    height: context.heightTransformer(dividedBy: 22.10),
                  ),
                  TextField(
                    decoration: InputDecoration(


                      contentPadding: EdgeInsets.symmetric(vertical: 24, horizontal: context.widthTransformer(dividedBy: 9.75)),

                      suffixIcon: Padding(
                        padding: EdgeInsets.symmetric(horizontal: context.widthTransformer(dividedBy: 20.93)),
                        child: IconButton(onPressed: (){
                          Get.toNamed("/cheapmarketsearched");

                        },icon: Icon(Icons.search,size: 32,color: Color(0xffA59EFC),),),
                      ),

                      floatingLabelStyle: TextStyle(color: cheapmarketcolor),
                      enabled: true,

                      hintText: "이곳에 입력",




                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: BorderSide(color: cheapmarketcolor,width: 3),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: BorderSide(color: cheapmarketcolor,width: 3),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: BorderSide(color: cheapmarketcolor,width: 3),

                      ),




                    ),
                  ),
                  SizedBox(
                    height: context.heightTransformer(dividedBy: 28.13),
                  ),

                  Row(
                    children: [
                      Text("추천 가게",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                    ],
                  ),

                  SizedBox(
                    height: context.heightTransformer(dividedBy: 27.22),
                  ),
                  Container(
                    child: Column(
                      children: [
                        CheapMarketSearchAppBox(title: "체스보드게임", category: "기타서비스업", local: "부산광역시", ismarked: true),
                        CheapMarketSearchAppBox(title: "맥스리뷰(금정점)", category: "기타서비스업", local: "부산광역시", ismarked: false),
                        CheapMarketSearchAppBox(title: "펠로", category: "양식", local: "부산광역시", ismarked: false),
                        CheapMarketSearchAppBox(title: "헤어디자이너 수빈", category: "이미용업", local: "광주광역시", ismarked:false),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

