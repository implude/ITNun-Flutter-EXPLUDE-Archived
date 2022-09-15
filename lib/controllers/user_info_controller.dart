import 'package:get/get.dart';
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
  }
}
