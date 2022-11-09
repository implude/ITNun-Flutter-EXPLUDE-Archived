import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/controllers/my_info_controller.dart';
import 'package:itnun/models/user.dart';

class AccountPage extends GetView<MyInfoController> {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColor,
        elevation: 0,
        leading: IconButton(
          onPressed: Get.back,
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: appColor,
        child: FutureBuilder<Rx<User>>(
          future: controller.user,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Obx(() {
                final user = snapshot.data!.value;

                return Column(
                  children: [
                    SizedBox(height: context.heightTransformer(dividedBy: 20)),
                    Image.asset("assets/images/logo_outlined.png",
                        color: Colors.white),
                    SizedBox(height: context.heightTransformer(dividedBy: 30)),
                    const Text(
                      "김태윤",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: context.heightTransformer(dividedBy: 100)),
                    Text(
                      user.email,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: context.heightTransformer(dividedBy: 16)),
                    const Expanded(child: _BottomInfo())
                  ],
                );
              });
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}

class _BottomInfo extends StatelessWidget {
  const _BottomInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(48), topRight: Radius.circular(48))),
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: context.heightTransformer(dividedBy: 30),
            horizontal: context.heightTransformer(dividedBy: 50)),
        child: Column(
          children: [
            ...[
              _BottomButton(
                  label: "내 정보",
                  icon: Icons.person,
                  onPressed: () => Get.toNamed("/account/info")),
              _BottomButton(
                  label: "북마크된 페이지",
                  icon: Icons.bookmarks,
                  onPressed: () => Get.toNamed("/account/bookmark")),
              _BottomButton(
                  label: "설정",
                  icon: Icons.settings,
                  onPressed: () => Get.toNamed("/account/setting")),
              _BottomButton(
                  label: "앱 정보",
                  icon: Icons.info,
                  onPressed: () => Get.toNamed("/account/app"))
            ].map((e) => Padding(
                  padding: EdgeInsets.only(
                      bottom: context.heightTransformer(dividedBy: 60)),
                  child: e,
                )),
            const Expanded(child: SizedBox.shrink()),
            TextButton(
                onPressed: () {
                  Get.find<FlutterSecureStorage>().delete(key: "token");
                  Get.offAllNamed("/");
                },
                child: const Text(
                  "로그아웃",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color(0xFFC1C1C1)),
                ))
          ],
        ),
      ),
    );
  }
}

class _BottomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onPressed;

  const _BottomButton(
      {Key? key,
      required this.label,
      required this.icon,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              color: const Color(0xFFF5F7FE),
              borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.all(12),
          child: Icon(
            icon,
            size: 32,
            color: appColor,
          ),
        ),
        const SizedBox(width: 12),
        Text(
          label,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        const Expanded(child: SizedBox.shrink()),
        IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.arrow_forward_ios,
            ))
      ],
    );
  }
}
