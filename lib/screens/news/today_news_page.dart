import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:itnun/models/news_data.dart';
import 'package:itnun/widgets/app_widgets.dart';

import '../../widgets/appbar_widgets.dart';

class TodayNewsPage extends StatelessWidget {
  const TodayNewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newsList = [
      NewsData(
        title: "\"청년이 만든 자율예산 사업\"...서울시, 시민투표 실시",
        content:
            """【 청년일보 】서울시는 청년들이 만든 청년자율예산 사업 확정을 위한 시민 투표를 온라인으로 진행한다고 밝혔다. 

서울시는 4일 청년들이 만든 '2023년 서울시 청년자율예산' 사업을 확정하기 위한 온라인 대시민 투표를 진행한다고 밝혔다. 서울 시민이라면 누구나 오는 10월 2일까지 서울시 엠보팅 홈페이지에서 투표할 수 있다.

이번 투표는 1천여명의 서울청년정책네트워크 참여 청년들이 5개월 동안 230여차례 논의를 거쳐 기획·제안한 총 77억원 규모 12개 사업의 내년도 예산 편성 우선순위를 가리기 위한 것이다.

 
투표 결과를 바탕으로 다음 달 22일 열리는 '2022년 서울청년정책네트워크 총회(서울청년시민회의)'에서 청년자율예산 편성 요구안이 확정된다. 요구안은 시의회 심의를 거쳐 내년도 서울시 예산에 편성된다.

투표에 부쳐지는 사업은 분야별로 '약자와의 동행'이 6개(67억원), 청년도전 지원 3개(6억원), 기후위기 대응 3개(4억원)다.

총 12개 사업은 구체적으로 ▲ 자립준비청년(보호종료아동)의 퇴소 전후 일상 교육 ▲ 장애청년과 비장애청년이 함께 하는 공동활동 ▲ 청년 마음건강 지원 디지털 플랫폼 구축 ▲ 비진학 청년 진로교육 ▲ 청년 창업가 팀빌딩 프로그램 ▲ 서울시 아르바이트 청년 권리 지원 등이 있다.

서울시는 이밖에 청년자율예산 제안을 통해 나온 청년들의 의견을 반영해 기존 6개 사업도 개선한다. 대표적으로 청년을 위한 보험교육이 필요하다는 제안에 따라 '서울 영테크' 사업에 보험 관련 교육과 원데이스쿨 등을 보강하기로 했다.

청년들의 참여로 만들어지는 자율예산 사업은 2020년 시작됐다.

기존 청년자율예산 사업 중 내년 본예산에 편성이 예정된 사업은 3개 총 1천191억원 규모로 청년 월세 지원 1천40억원, 청년일자리 '1천개의 꿈' 130억원, 고립청년 지원사업 21억원이다.

김철의 시 미래청년기획단장은 "청년 월세지원, 마음건강 지원사업 등 시의 대표적인 청년정책이 청년자율예산 제도를 통해 탄생한 만큼 청년자율예산은 큰 나무가 될 수 있는 청년정책의 씨앗을 심는 의미가 있다"며 "시민 여러분이 온라인 투표를 통해 많은 관심과 응원으로 함께 해 주시길 바란다"고 밝혔다.


【 청년일보=전화수 기자 】
        """,
        reporter: "전희진",
        registeredAt: DateTime(2022, 9, 4, 12, 37),
        editedAt: DateTime(2022, 9, 4, 12, 0, 55),
        email: "jeonhee77@dimigo.hs.kr",
        url: "https://www.google.co.kr/",
        siteName: "청년일보",
        subtitle: "'2023년 서울시 청년자율예산' 사업...온라인 투표 확정",
      ),
      NewsData(
        title: "뉴질랜드 현지취업...한인청년 취업박람회 개최",
        content:
            "【 청년일보 】주뉴질랜드 한국대사관은 3일 뉴질랜드에서 현지 취업을 희망하는 한인 청년들을 위한 '2022 취업박람회'를 개최한다고 밝혔다. KOTRA 오클랜드무 어쩌고 저쩌고 전희진",
        reporter: "전희진",
        registeredAt: DateTime(2022, 9, 3, 11, 33),
        email: "jeonhee77@dimigo.hs.kr",
        url: "https://www.google.co.kr/",
        siteName: "청년일보",
        subtitle: "뭔데 그게",
      ),
      NewsData(
        title: "\"지친 청년의 마음에 보탬을\"...서울시, '마음건강 앱' 시범도입",
        content:
            "【 청년일보 】 서울시가 청년들이 스마트폰 앱으로 불안증 등을 자가진단하고, 진단결과에 따라 게임, 미술, 신체활동 같은 맞춤형 콘텐츠로 마음건강을 관리할 수 있지 않고 어쩔 전희진",
        reporter: "전희진",
        registeredAt: DateTime(2022, 8, 31, 13, 36),
        email: "jeonhee77@dimigo.hs.kr",
        url: "https://www.google.co.kr/",
        siteName: "청년일보",
        subtitle: "뭔데 그게",
      )
    ];

    return Scaffold(
        appBar: createDefaultAppBar(),
        body: AppPadding(
          child: Column(
            children: [
              SizedBox(height: context.heightTransformer(dividedBy: 20)),
              const Center(
                child: Text(
                  "오늘의 뉴스",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: context.heightTransformer(dividedBy: 20)),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (_, index) =>
                        _NewsWidget(data: newsList[index]),
                    separatorBuilder: (_, __) => SizedBox(
                        height: context.heightTransformer(dividedBy: 40)),
                    itemCount: newsList.length),
              )
            ],
          ),
        ));
  }
}

class _NewsWidget extends StatelessWidget {
  final NewsData data;

  const _NewsWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final format = DateFormat("yyyy-MM-dd HH:mm");

    return InkWell(
      onTap: () => Get.toNamed("/news/detail", arguments: data),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFF5F7FE),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: context.heightTransformer(dividedBy: 60)),
            Text(
              data.content.replaceAll("\n", ""),
              style: const TextStyle(color: Color(0xFF616161)),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: context.heightTransformer(dividedBy: 60)),
            Text(
              "${data.reporter} 기자 | ${format.format(data.registeredAt)}",
              style: const TextStyle(color: Color(0xFF818181)),
            )
          ],
        ),
      ),
    );
  }
}
