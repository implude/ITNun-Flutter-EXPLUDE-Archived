import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/app_widgets.dart';
import '../constants.dart';

class DetailSearched extends StatelessWidget {
  const DetailSearched({Key? key}) : super(key: key);
  static const int count=30;
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

                  Text("상세검색",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),),
                  SizedBox(
                    height: context.heightTransformer(dividedBy: 844/44),
                  ),
                  Row(
                    children: [
                      Text("검색 결과 ${count}개",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                    ],
                  ),

                  SizedBox(
                    height: context.heightTransformer(dividedBy: 42.2),
                  ),
                  Container(
                    child: Column(
                      children: [
                        TotalSearchAppBox(title: "청춘남녀만남지원", category: "생활복지", local: "경북", ismarked: true),
                        TotalSearchAppBox(title: "주거안정 월세 대출", category: "주거금융", local: "전국", ismarked: false),
                        TotalSearchAppBox(title: "인문 100년 장학금", category: "생활복지", local: "전국", ismarked: false),
                        TotalSearchAppBox(title: "LH 희망상가", category: "창업지원", local: "전국", ismarked:false),
                        TotalSearchAppBox(title: "청춘남녀만남지원", category: "생활복지", local: "경북", ismarked: true),
                        TotalSearchAppBox(title: "주거안정 월세 대출", category: "주거금융", local: "전국", ismarked: false),
                        TotalSearchAppBox(title: "인문 100년 장학금", category: "생활복지", local: "전국", ismarked: false),
                        TotalSearchAppBox(title: "LH 희망상가", category: "창업지원", local: "전국", ismarked:false),
                        TotalSearchAppBox(title: "청춘남녀만남지원", category: "생활복지", local: "경북", ismarked: true),
                        TotalSearchAppBox(title: "주거안정 월세 대출", category: "주거금융", local: "전국", ismarked: false),
                        TotalSearchAppBox(title: "인문 100년 장학금", category: "생활복지", local: "전국", ismarked: false),
                        TotalSearchAppBox(title: "LH 희망상가", category: "창업지원", local: "전국", ismarked:false),
                        TotalSearchAppBox(title: "청춘남녀만남지원", category: "생활복지", local: "경북", ismarked: true),
                        TotalSearchAppBox(title: "주거안정 월세 대출", category: "주거금융", local: "전국", ismarked: false),
                        TotalSearchAppBox(title: "인문 100년 장학금", category: "생활복지", local: "전국", ismarked: false),
                        TotalSearchAppBox(title: "LH 희망상가", category: "창업지원", local: "전국", ismarked:false),
                        TotalSearchAppBox(title: "청춘남녀만남지원", category: "생활복지", local: "경북", ismarked: true),
                        TotalSearchAppBox(title: "주거안정 월세 대출", category: "주거금융", local: "전국", ismarked: false),
                        TotalSearchAppBox(title: "인문 100년 장학금", category: "생활복지", local: "전국", ismarked: false),
                        TotalSearchAppBox(title: "LH 희망상가", category: "창업지원", local: "전국", ismarked:false),
                        TotalSearchAppBox(title: "청춘남녀만남지원", category: "생활복지", local: "경북", ismarked: true),
                        TotalSearchAppBox(title: "주거안정 월세 대출", category: "주거금융", local: "전국", ismarked: false),
                        TotalSearchAppBox(title: "인문 100년 장학금", category: "생활복지", local: "전국", ismarked: false),
                        TotalSearchAppBox(title: "LH 희망상가", category: "창업지원", local: "전국", ismarked:false),
                        TotalSearchAppBox(title: "청춘남녀만남지원", category: "생활복지", local: "경북", ismarked: true),
                        TotalSearchAppBox(title: "주거안정 월세 대출", category: "주거금융", local: "전국", ismarked: false),
                        TotalSearchAppBox(title: "인문 100년 장학금", category: "생활복지", local: "전국", ismarked: false),
                        TotalSearchAppBox(title: "LH 희망상가", category: "창업지원", local: "전국", ismarked:false),
                        TotalSearchAppBox(title: "청춘남녀만남지원", category: "생활복지", local: "경북", ismarked: true),
                        TotalSearchAppBox(title: "주거안정 월세 대출", category: "주거금융", local: "전국", ismarked: false),
                        TotalSearchAppBox(title: "인문 100년 장학금", category: "생활복지", local: "전국", ismarked: false),
                        TotalSearchAppBox(title: "LH 희망상가", category: "창업지원", local: "전국", ismarked:false),
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
