import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/bookmark_widget.dart';
import 'package:itnun/widgets/title_subject_widget.dart';

class BookmarkEditPage extends StatelessWidget {
  const BookmarkEditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(actions: [
        IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.check,
              color: Colors.black,
            ))
      ]),
      body: AppPadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TitleWidget(title: "북마크된 페이지"),
            ...[
              BookmarkRemoveBox(
                  title: "LH 희망상가",
                  filled: "창업지원",
                  outlined: "전국",
                  backgroundColor: appColor,
                  onRemoved: () {}),
              BookmarkRemoveBox(
                  title: "청춘남녀만남지원",
                  filled: "생활복지",
                  outlined: "경북",
                  backgroundColor: appColor,
                  onRemoved: () {})
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
