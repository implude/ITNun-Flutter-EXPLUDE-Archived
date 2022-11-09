import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/models/policy_info.dart';

class DetailSearchController extends GetxController {
  // final employmentExpanded = false.obs;
  // final educationExpanded = false.obs;
  // final specialtyExpanded = false.obs;
  // final applyDateExpanded = false.obs;
  final policyTypeExpanded = false.obs;
  final regionsExpanded = false.obs;

  late final _token = Get.find<FlutterSecureStorage>().read(key: "token");
  final policyTypes = {
    "취업지원": "004001",
    "창업지원": "004002",
    "주거·금융": "004003",
    "생활·복지": "004004",
    "정책참여": "004005",
    "코로나19": "004006",
  };

  final regions = {
    "서울": "003002001",
    "인천": "003002004",
    "대전": "003002006",
    "대구": "003002003",
    "광주": "003002005",
    "울산": "003002007",
    "부산": "003002002",
    "세종": "003002017",
    "제주": "003002016",
    "경기": "003002008",
    "강원": "003002009",
    "충남": "003002011",
    "충북": "003002010",
    "경북": "003002014",
    "경남": "003002015",
    "전북": "003002012",
    "전남": "003002013",
  };

  // final employmentStates = [
  //   "재직자",
  //   "자영업자",
  //   "미취업자",
  //   "프리랜서",
  //   "일용근로자",
  //   "(예비)창업자",
  //   "단기근로자",
  //   "영농종사자",
  //   "제한없음"
  // ];
  //
  // final educations = [
  //   "고졸 미만",
  //   "고교 재학",
  //   "고졸 예정",
  //   "고교 졸업",
  //   "대학 재학",
  //   "대졸 예정",
  //   "대학 졸업",
  //   "석 • 박사",
  //   "제한없음"
  // ];
  //
  // final specializations = [
  //   "중소기업",
  //   "여성",
  //   "저소득층",
  //   "장애인",
  //   "농업인",
  //   "군인",
  //   "지역인재",
  //   "제한없음"
  // ];

  // final applyDates = ["현재 신청 가능", "1개월 이내", "3개월 이내", "6개월 이내"];

  // final ageController = TextEditingController();
  final keywordController = TextEditingController();

  // final employmentState = <String>[].obs;
  // final education = <String>[].obs;
  // final specialization = <String>[].obs;
  // final applyDate = <String>[].obs;

  final region = <String>[].obs;
  final policyType = <String>[].obs;

  Future<List<PolicyInfo>> search() async {
    final url = serverUrl.replace(path: "/policy/detail_search");

    final response = await post(
      url,
      body: jsonEncode({
        "token": await _token,
        "query": keywordController.text,
        if (policyType.isNotEmpty)
          "bizTycdSel":
              policyType.map((element) => policyTypes[element]).join(","),
        if (region.isNotEmpty)
          "srchPolyBizSecd":
              region.map((element) => regions[element]).join(","),
      }),
      headers: {"Content-Type": "application/json"},
    );

    final policy =
        jsonDecode(utf8.decode(response.bodyBytes))["policy"] as List;

    return policy
        .map((e) => PolicyInfo(
              e["polyBizSecd"],
              e["accrRqisCn"],
              e["ageInfo"],
              e["polyItcnCn"],
              e["splzRlmRqisCn"],
              e["bizId"],
              e["empmSttsCn"],
              e["polyBizSjnm"],
              e["rqutPrdCn"],
              e["majrRqisCn"],
              e["sporScvl"],
              e["sporCn"],
              e["plcyTpNm"],
              e["rqutUrla"],
              e["rqutProcCn"],
            ))
        .toList();
  }
}
