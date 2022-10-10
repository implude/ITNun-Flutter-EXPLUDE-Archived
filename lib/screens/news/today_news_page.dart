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
        reporter: "전화수",
        registeredAt: DateTime(2022, 9, 4, 12, 37),
        editedAt: DateTime(2022, 9, 4, 12, 0, 55),
        email: "aimhigh21c@youthdaily.co.kr",
        url: "https://www.youthdaily.co.kr/news/article.html?no=110295",
        siteName: "청년일보",
        subtitle: "'2023년 서울시 청년자율예산' 사업...온라인 투표 확정",
      ),
      NewsData(
        title: "뉴질랜드 현지취업...한인청년 취업박람회 개최",
        content:
            """【 청년일보 】주뉴질랜드 한국대사관은 3일 뉴질랜드에서 현지 취업을 희망하는 한인 청년들을 위한 '2022 취업박람회'를 개최한다고 밝혔다.



            KOTRA 오클랜드무역관과 함께하는 행사는 오는 8일 오클랜드 힐튼호텔에서 열린다.



    참가 대상은 시민권자를 비롯해 영주권, 비즈니스 비자, 워킹홀리데이 비자 등 뉴질랜드에서 합법적으로 일할 수 있는 한인 청년이다.



    행사에는 전자제품 체인점인 피비테크, 그랜드밀레니엄호텔, 오스템, 오뚜기, 거복식품 등 22개의 현지 기업과 한국기업 및 한인기업이 참가한다.


    박람회는 1부에서 뉴질랜드 취업 환경과 입사 서류 및 면접 요령 등에 관한 멘토링 세미나가 열린다. 이어 2부에서는 기업과 구직자 간의 1대1 현장 미팅이 진행된다.



    박람회 당일 현장 접수도 가능하며, 사전 참가 신청은 박람회 홈페이지를 통해서 가능하다.





    【 청년일보=전화수 기자 】

    """,
        reporter: "전화수",
        registeredAt: DateTime(2022, 9, 3, 11, 33),
        email: "aimhigh21c@youthdaily.co.kr",
        url: "https://www.youthdaily.co.kr/news/article.html?no=110282",
        siteName: "청년일보",
        subtitle: "22개 현지 기업과 한국기업 및 한인기업 참가",
      ),
      NewsData(
        title: "\"지친 청년의 마음에 보탬을\"...서울시, '마음건강 앱' 시범도입",
        content:
            """【 청년일보 】 서울시가 청년들이 스마트폰 앱으로 불안증 등을 자가진단하고, 진단결과에 따라 게임, 미술, 신체활동 같은 맞춤형 콘텐츠로 마음건강을 관리할 수 있는 ‘마음건강 앱 서비스’를 9월부터 시범도입한다.

 

31일 서울시에 따르면, ‘마음건강 앱’은 정신건강의학 전문의의 임상데이터를 기반으로 개발한 검사도구와 콘텐츠를 통해 마음건강 상태를 진단, 회복을  위해 노력할 수 있도록 돕는다. 남의 시선을 신경쓰지 않고, 병원이나 상담센터에 방문하지 않고도 마음건강 관리를 할 수 있어 특히 모바일 환경에 익숙한 청년들에게 도움이 될 것으로 기대된다.

 

'마음건강 앱'은 한양대 한양디지털헬스케어센터가 개발했다. 과학기술정보통신부와 한국연구재단이 수행 중인 ‘포스트 코로나 시대 비대면 정서장애 예방 및 관리 플랫폼 기술 개발’ 사업의 하나다. 

 

서울시는 ‘청년 마음건강 관리’ 지원 사업에 참여하고 있는 청년 500명을 대상으로 ‘마음건강 앱 서비스’를 시범도입한다.

 

‘마음건강 앱 서비스’는 서울시 ‘청년 마음건강 관리’ 지원 사업의 하나다. 서울시는 ‘청년 마음건강 관리’ 지원 사업을 통해 지난 2019년부터 지금까지 서울청년 5천여명을 관리한 바 있다. 타 지자체는 물론 중앙정부에서도 벤치마킹하는 등 청년의 사회안전망을 지키기 위한 필수 지원사업으로 자리매김하고 있다는 것이 서울시의 설명이다.

  

이 앱의 주요 구성 내용을 보면 ▲이모티콘과 소리를 넣어 쉽고 간편하게 검진하는 ‘디지털 우울척도 검사’ ▲정신건강의학 전문의가 만든 검증된 ‘챗봇’(진단설문지) ▲인지조절능력, 자유연상력, 사회적 반응성 등 심리적인 상태를 측정할 수 있는 ‘인지·정서 스크리닝 게임’이다. 

 

검사도구는 그간 정신건강의학과에서 서면으로 이뤄진 우울(PHQ-9, CES-D-10), 불안(GAD7), 수면 장애(ISI-K) 척도를 디지털화해 개발됐다. 

  

진단을 마치면 가벼움(경미한 우울), 보통(중증도 우울), 심각(고도 우울) 등으로 마음건강 상태를 확인할 수 있고, 진단결과에 따라 3가지의 맞춤형 치료 콘텐츠가 추천된다. 사용자의 우울감 검사결과와 활동 수행 데이터가 쌓일수록 맞춤형 콘텐츠 추천 알고리즘이 고도화된다. 

 

마음건강 진단에 따른 추천 프로그램 [사진=서울특별시]
▲ 마음건강 진단에 따른 추천 프로그램 [사진=서울특별시]
 

'가벼움(경미한 우울)'으로 진단된 청년들에게는 디지털 만다라, 신체활동게임과 함께 우울감이 개인의 인지적 조절능력 등에 미치는 영향을 측정할 수 있는 게임 형태의 ‘인지·정서 스크리닝’ 콘텐츠를 함께 제공한다.

 

‘보통(중증도 우울)’ 상태의 청년들에게는 우울감 개선에 도움을 주는 근력과 심폐능력 향상을 위한 ‘근심타파 신체활동게임’을 추천한다. 

 

‘심각(고도 우울)’ 상태의 청년들에게는 흥미를 유발할 수 있는 ‘디지털 만다라’ 프로그램을 추천한다. ‘디지털 만다라’는 원 안에 다양한 형태의 무늬를 색칠하면서 마음을 편안하게 가라앉히는 미술치료기법인 만다라를 디지털화한 프로그램이다.

 

서울시는 ‘마음건강 앱’ 활용 효과를 높이기 위해 참여 청년들이 지속적으로 앱을 사용할 수 있도록 ‘청년 마음건강 관리’ 지원 사업 전담 상담사를 통해 지원한다는 계획이다. 또 참여 청년의 앱 사용 데이터를 상담 보조자료로 활용해 효과적인 상담이 이뤄지도록 할 예정이다. 

 

또한, 축적된 진단 데이터 분석으로 사용자에게 높은 치료 효과를 얻을 수 있는 콘텐츠를 추천할 수 있도록 인공지능 알고리즘도 고도화할 계획이다.

  

김철희 서울시 미래청년기획단장은 “마음건강도 신체건강처럼 지속적으로 관리해야 하지만, 신체건강과 달리 눈에 잘 보이지 않아 쉽게 간과하기 쉽다. 자신의 마음건강 상태를 잘 모르는 경우도 많다”고 짚었다. 아울러 “모바일 환경에 익숙한 청년들이 ‘마음건강 앱’을 통해 간편하게 스스로 마음건강 상태를 확인하고, 때를 놓치지 않고 관리해 마음건강을 회복할 수 있기를 바란다”고 말했다.

 

 

【 청년일보=김원빈 기자 】 """,
        reporter: "김원빈",
        registeredAt: DateTime(2022, 8, 31, 13, 36),
        email: "wonbin7@youthdaily.co.kr",
        url: "https://www.youthdaily.co.kr/news/article.html?no=109967",
        siteName: "청년일보",
        subtitle: "진단결과에 따라 미술치료, 신체활동 등 맞춤형 제안",
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
