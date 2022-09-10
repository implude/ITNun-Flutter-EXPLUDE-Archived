import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/title_subject_widget.dart';

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
              BookmarkAbleBox(
                  onMarked: (value) {},
                  title: "LH 희망상가",
                  category: "창업지원",
                  region: "전국",
                  marked: true,
                  backgroundColor: appColor),
              BookmarkAbleBox(
                  onMarked: (value) {},
                  title: "청춘남녀만남지원",
                  category: "생활복지",
                  region: "경북",
                  marked: true,
                  backgroundColor: appColor),
              BookmarkAbleBox(
                  onMarked: (value) {},
                  title: "체스보드게임",
                  category: "기타서비스업",
                  region: "부산광역시",
                  marked: true,
                  backgroundColor: appColor)
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
