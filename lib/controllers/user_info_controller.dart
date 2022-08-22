import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserInfoController extends GetxController {
  final jobController = TextEditingController();
  final departmentController = TextEditingController();
  final stageItems = ["초등학교 이하", "중학교", "고등학교", "대학교", "학교 밖 청소년", "일반인", "기타"];
  final isReady = false.obs;
  final stageValue = Rxn<String>();

  void next() {

  }
}
