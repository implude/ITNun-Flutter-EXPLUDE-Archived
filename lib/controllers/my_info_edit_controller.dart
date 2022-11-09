import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/controllers/my_info_controller.dart';
import 'package:itnun/models/change_info_form.dart';
import 'package:itnun/models/user_info.dart';

class MyInfoEditController extends GetxController {
  final nameController = TextEditingController();
  late final TextEditingController emailController;
  late final Rx<UserJob> job;
  late final Rx<UserDepartment> specialization;

  final region = Rxn<String>();
  late final Rx<UserStage> academic;

  late final RxBool preStartup;

  late final _token = Get.find<FlutterSecureStorage>().read(key: "token");

  Future<void> change() async {
    final url = serverUrl.replace(path: "/auth/change_info");

    final form = ChangeInfoForm(
      token: (await _token)!,
      job: job.value,
      specialization: specialization.value,
      academic: academic.value,
      preStartup: preStartup.value,
    );

    await post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(form),
    );

    Get.find<MyInfoController>().reload();
  }

  Future<int> init() async {
    final user = (await Get.find<MyInfoController>().user).value;

    emailController = TextEditingController(text: user.email);
    job = user.job.obs;
    specialization = user.specialization.obs;
    academic = user.academic.obs;
    preStartup = user.preStartup.obs;

    return 0;
  }
}
