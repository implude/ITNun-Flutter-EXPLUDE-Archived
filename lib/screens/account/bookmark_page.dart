import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/models/policy_info.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/title_subject_widget.dart';
import 'package:itnun/widgets/bookmark_widget.dart';

import '../../widgets/bookmark_widget.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(actions: [
        IconButton(
            onPressed: () => Get.toNamed("/account/bookmark/edit"),
            icon: const Icon(
              Icons.mode_edit_outlined,
              color: Colors.black,
            ))
      ]),
      body: AppPadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleWidget(title: "북마크된 페이지"),
            ...[
              PolicyBookmarkBox(
                onMarked: (value) {},
                marked: true,
                policyInfo: PolicyInfo("서울", "", "", "", "", "", "", "", "", "", "", "", "", "", ""),
              ),
              PolicyBookmarkBox(
                onMarked: (value) {},
                marked: true,
                policyInfo: PolicyInfo("서울", "", "", "", "", "", "", "", "", "", "", "", "", "", ""),
              ),
              KindBookmarkBox(
                  title: "체스보드게임",
                  region: "부산광역시",
                  marked: true,
                  onMarked: (value) {}
              ),
            ].map((e) => Padding(
                  padding: EdgeInsets.only(
                      bottom: context.heightTransformer(dividedBy: 60)),
                  child: e,
                ))
          ],
        ),
      ),
    );
  }
}
