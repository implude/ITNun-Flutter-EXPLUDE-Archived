import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/result_widgets.dart';

class TotalResult extends StatelessWidget {
  const TotalResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:createDefaultAppBar(),
      body:GestureDetector(
        onTap:FocusScope.of(context).unfocus,
        behavior: HitTestBehavior.opaque,
        child: Padding(
          padding : EdgeInsets.fromLTRB(context.heightTransformer(dividedBy:20), 0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(
              //   height : context.heightTransformer(dividedBy:30),
              // ),
              // const Text("LH 희망상가",
              //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36)
              // ),
              // SizedBox(
              //   height : context.heightTransformer(dividedBy:20),
              // ),
              // const SubTitleBox(
              //   title: "정책 소개"
              // ),
              // SizedBox(
              //   height : context.heightTransformer(dividedBy:35),
              // ),
              // const PlainTextBox(
              //   text : "일자리창출, 지역경제 활성화, 젠트리피케이션 방지 등 사회적 가치 실현을 위해 청년, 경력단절여성, 소상공인 등에게 장기간 저렴하게 임대하는 LH장기임대주택 단지내 임대상가."
              // ),
              // SizedBox(height:context.heightTransformer(dividedBy: 35)),
              // const SubTitleBox(
              //   title:"정책 요약"
              // ),
              // SizedBox(height:context.heightTransformer(dividedBy: 35)),
              // const KeyValueBox(
              //     keyy: "정책 유형",
              //     value : "창업 지원, 경영 지원"
              // ),
              // SizedBox(
              //   height:context.heightTransformer(dividedBy: 100),
              // ),
              // Container(
              //     width:context.widthTransformer(dividedBy: 1.25),
              //     //height:context.heightTransformer(dividedBy:5),
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(12),
              //       color:const Color(0xffECF0FF),
              //     ),
              //     child: Padding(
              //       padding: const EdgeInsets.all(10),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           const Text("지원 내용", style:TextStyle(fontWeight: FontWeight.bold)),
              //           SizedBox(height:context.heightTransformer(dividedBy:45)),
              //           Row(
              //             children: [
              //               Container(
              //                 height:10,
              //                 width: 10,
              //                 decoration: const BoxDecoration(
              //                   shape:BoxShape.circle,
              //                   color:Colors.blue,
              //                 ),
              //               ),
              //               Container(
              //                 width: context.widthTransformer(dividedBy:30),
              //               ),
              //               const Text("2년 단위로 임계차 계약 갱신"),
              //             ],
              //           ),
              //           SizedBox(height:context.heightTransformer(dividedBy:100)),
              //           Row(
              //             children: [
              //               Container(
              //                 height:10,
              //                 width: 10,
              //                 decoration: const BoxDecoration(
              //                   shape:BoxShape.circle,
              //                   color:Colors.blue,
              //                 ),
              //               ),
              //               Container(
              //                 width: context.widthTransformer(dividedBy:30),
              //               ),
              //               const Text("최장 10년간 임대차 기간을 보장"),
              //             ],
              //           ),
              //           SizedBox(height:context.heightTransformer(dividedBy:100)),
              //           Row(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Padding(
              //                 padding: EdgeInsets.fromLTRB(0, context.heightTransformer(dividedBy: 150), 0, 0),
              //                 child: Container(
              //                   height:10,
              //                   width: 10,
              //                   decoration: const BoxDecoration(
              //                     shape:BoxShape.circle,
              //                     color:Colors.blue,
              //                   ),
              //                 ),
              //               ),
              //               Container(
              //                 width: context.widthTransformer(dividedBy:30),
              //               ),
              //               const Expanded(
              //                 child: Text("6년 기간 이후에는 소득수준등에 따라 갱신시점 감정평가금액의 80프로 혹은 100프로로 임대조건등을 조정하여 갱신 계약예정",
              //                   overflow:TextOverflow.fade,
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ],
              //       ),
              //     )
              // ),
              const InfoBox(
                subtitle:"지원 내용",
                contents: [
                  "2년 단위로 임계차 계약 갱신",
                  // "최장 10년간 임대차 기간을 보장",
                  // "6년 기간 이후에는 소득수준등에 따 라 갱신시점 감정평가금액의 80프로 혹은 100프로로 임대조건등을 조정하여 갱신 계약예정",
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}

