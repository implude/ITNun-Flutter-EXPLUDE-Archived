import 'package:flutter/material.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/detail_widgets.dart';
import 'package:itnun/widgets/search_widgets.dart';

class HireSearchDetail extends StatelessWidget {
  const HireSearchDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: const SearchDetailWidget(
        title: "[경력]반도체 배관시공 구매담당 채용",
        children: [
          _InfoWidget(),
          DetailComponent(
            title: "모집 요강",
            children: [
              DetailValueBox(description: "회사명", value: "(주)파인텍"),
              DetailValueBox(
                  description: "경력조건", value: "경력 (최소 2년 5 개월 이상) 우대"),
              DetailValueBox(description: "학력", value: "대졸(2~3년) ~ 대졸(4년)"),
              DetailValueBox(description: "고용형태", value: "기간의 정함이 없는 근로계약"),
              DetailValueBox(description: "모집인원", value: "2명"),
              DetailValueBox(description: "장애인 채용인원", value: "-"),
              DetailValueBox(
                  description: "근무예정지",
                  value: "경기도 평택시 진외면 진위산단로\n53-60, (청호리)"),
              DetailValueBox(description: "모집집종", value: "자재·구매 사무원(건설)")
            ],
          ),
          DetailComponent(title: "근무조건", children: [
            InfoBox(title: "급여", contents: [
              "연봉 31,000,000원 이상 ~ 33,000,000원 이하",
              "상여금 별도 : 0%",
              "임금 협의 가능"
            ]),
            InfoBox(title: "근무시간", contents: [
              "(오전) 8시 00분~(오후) 5시 00분",
              "휴게시간( (오전) 11시30분~(오후) 12시30분)",
              "주 소정근로시간 : 40시간"
            ]),
            DetailValueBox(description: "근무형태", value: "주 5일 근무"),
            DetailValueBox(
                description: "사회보험", value: "국민연금\n고용보험\n산재보험\n건강보험"),
            DetailValueBox(description: "퇴직급여", value: "퇴직연금")
          ]),
          DetailComponent(title: "우대 사항", children: [
            DetailValueBox(description: "전공", value: "경영학 (학과 : 경영전공)"),
            DetailValueBox(description: "자격면허", value: "관계없음 -"),
            DetailValueBox(description: "외국어능력", value: "영어(중),중국어(중)"),
            DetailValueBox(description: "병역대체 복무자채용", value: "비희망")
          ])
        ],
      ),
    );
  }
}

class _InfoWidget extends StatelessWidget {
  const _InfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFFF5F7FE),
          borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.all(20),
      child: Row(
        children: const [
          Icon(
            Icons.info_outline,
            size: 36,
          ),
          SizedBox(width: 16),
          Flexible(
            child: Text(
              "본 저작물은 워크넷(한국고용정보원)에서 2022년 작성하여 공공누리 제4유형으로 개방한 채용 상세정보를 이용하였으며, 해당 저작물은 워크넷에서 무료로 시청하실 수 있습니다.",
              textAlign: TextAlign.end,
            ),
          )
        ],
      ),
    );
  }
}
