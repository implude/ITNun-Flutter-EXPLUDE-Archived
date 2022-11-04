import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailSearchController extends GetxController {
  // final employmentExpanded = false.obs;
  // final educationExpanded = false.obs;
  // final specialtyExpanded = false.obs;
  // final applyDateExpanded = false.obs;
  final policyTypeExpanded = false.obs;
  final regionsExpanded = false.obs;

  final policyTypes = [
    "취업지원",
    "창업지원",
    "주거·금융",
    "생활·복지",
    "정책참여",
    "코로나19"
  ];

  final regions = [
    "서울",
    "인천",
    "대전",
    "대구",
    "광주",
    "울산",
    "부산",
    "세종",
    "제주",
    "경기",
    "강원",
    "충남",
    "충북",
    "경북",
    "경남",
    "전북",
    "전남",
  ];

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
}
