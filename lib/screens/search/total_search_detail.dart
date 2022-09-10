import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../widgets/detail_widgets.dart';

class TotalSearchDetail extends StatelessWidget {
  const TotalSearchDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: createDefaultAppBar(),
        body: FocusUnSetter(
          child: AppPadding(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: context.heightTransformer(dividedBy: 30)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("LH 희망상가",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 36)),
                    SizedBox(
                      height: context.heightTransformer(dividedBy: 20),
                    ),
                    const SubTitleBox(subtitle: "정책 소개"),
                    SizedBox(
                      height: context.heightTransformer(dividedBy: 35),
                    ),
                    const PlainTextBox(
                        text:
                            "일자리창출, 지역경제 활성화, 젠트리피케이션 방지 등 사회적 가치 실현을 위해 청년, 경력단절여성, 소상공인 등에게 장기간 저렴하게 임대하는 LH장기임대주택 단지내 임대상가."),
                    SizedBox(height: context.heightTransformer(dividedBy: 35)),
                    const SubTitleBox(subtitle: "정책 요약"),
                    SizedBox(height: context.heightTransformer(dividedBy: 35)),
                    const DetailValueBox(
                        description: "정책 유형", value: "창업 지원, 경영 지원"),
                    SizedBox(
                      height: context.heightTransformer(dividedBy: 100),
                    ),
                    const InfoBox(
                      title: "지원 내용",
                      contents: [
                        "2년 단위로 임계차 계약 갱신",
                        "최장 10년간 임대차 기간을 보장",
                        "6년 기간 이후에는 소득수준등에 따 라 갱신시점 감정평가금액의 80프로 혹은 100프로로 임대조건등을 조정하여 갱신 계약예정",
                      ],
                    ),
                    SizedBox(
                      height: context.heightTransformer(dividedBy: 100),
                    ),
                    const DetailValueBox(description: "지원 규모", value: '-'),
                    SizedBox(height: context.heightTransformer(dividedBy: 35)),
                    const SubTitleBox(subtitle: "신청 자격"),
                    SizedBox(height: context.heightTransformer(dividedBy: 35)),
                    SizedBox(
                      height: context.heightTransformer(dividedBy: 100),
                    ),
                    const DetailValueBox(
                        description: "연령", value: "만 19세 ~ 39세"),
                    SizedBox(
                      height: context.heightTransformer(dividedBy: 100),
                    ),
                    const DetailValueBox(description: "학력", value: "제한없음"),
                    SizedBox(
                      height: context.heightTransformer(dividedBy: 100),
                    ),
                    const DetailValueBox(description: "전공", value: "제한없음"),
                    SizedBox(
                      height: context.heightTransformer(dividedBy: 100),
                    ),
                    const DetailValueBox(
                        description: "취업 상태",
                        value: "예비 창업자 및 현 창업 3년\n미만의 초기 청년 창업자"),
                    SizedBox(
                      height: context.heightTransformer(dividedBy: 100),
                    ),
                    const DetailValueBox(description: "지원 규모", value: '-'),
                    SizedBox(height: context.heightTransformer(dividedBy: 35)),
                    const SubTitleBox(subtitle: "신청 방법"),
                    SizedBox(height: context.heightTransformer(dividedBy: 35)),
                    const InfoBox(title: "신청 절차", contents: [
                      "LH 청약센터 접속 ( http://www.apply.lh.or.kr/)",
                      "분양정보 : 상가",
                      "LH 희망상가 모집 공고 확인 후 접수",
                    ]),
                    SizedBox(height: context.heightTransformer(dividedBy: 35)),
                    const DetailValueBox(
                        description: "신청 사이트",
                        value: "http://www.apply.LH.or.kr/"),
                    SizedBox(height: context.heightTransformer(dividedBy: 35)),
                    AppButton(
                        text: "신청 사이트로 가기",
                        textColor: Colors.white,
                        backgroundColor: appColor,
                        onPressed: () => launchUrlString(
                            "https://www.google.co.kr",
                            mode: LaunchMode.externalApplication)),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
