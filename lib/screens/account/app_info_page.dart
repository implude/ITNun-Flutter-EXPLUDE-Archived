
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../widgets/app_widgets.dart';

class AppInfoPage extends StatelessWidget {
  const AppInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: context.heightTransformer(dividedBy: 3)),
            const Text("사람과 정책을 잇는.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )),
            LogoWithText(width: context.widthTransformer(dividedBy: 2.9)),
            FutureBuilder<String>(
                future:
                    PackageInfo.fromPlatform().then((value) => value.version),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text("v${snapshot.data}",
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w600));
                  } else {
                    return const SizedBox.shrink();
                  }
                }),
            SizedBox(
              height: context.heightTransformer(dividedBy: 844/200),
            ),
            TextButton(onPressed: (){Get.toNamed("/license");},child: Text("사용된 오픈소스의 라이선스 보기",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xffC1C1C1)),)),
          ],
        ),
      ),
    );
  }
}
