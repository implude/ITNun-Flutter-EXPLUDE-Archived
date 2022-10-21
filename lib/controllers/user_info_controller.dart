import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/models/user_info.dart';

class UserInfoController extends GetxController {
  final jobValue = Rxn<UserJob>();
  final specializationValue = Rxn<UserDepartment>();
  final isPreparing = false.obs;
  final academicValue = Rxn<UserStage>();

  bool isValid() =>
      jobValue.value != null &&
      specializationValue.value != null &&
      academicValue.value != null;

  void next() {
    Get.back(
        result: UserInfo(
            job: jobValue.value!,
            academic: academicValue.value!,
            specialization: specializationValue.value!,
            preparing: isPreparing.value));
    Get.snackbar("회원가입 완료","회원가입이 완료되었습니다",colorText: Colors.white,backgroundColor: appColor);
    Get.offAllNamed("/");
  }
}
