import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyInfoEditController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final jobController = TextEditingController();
  final departmentController = TextEditingController();

  final region = Rxn<String>();
  final stage = Rxn<String>();

  final isPreparing = false.obs;
}
