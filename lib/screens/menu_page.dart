import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/title_subject_widget.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widgets = [
      _MenuWidget(
        iconColor: const Color(0xFF3C92F8),
        title: "홈",
        onPressed: () => Get.offAllNamed("/main"),
        icon: Icons.home_rounded,
      ),
      _MenuWidget(
          title: "청년 정책 찾기",
          icon: Icons.how_to_vote,
          iconColor: const Color(0xFF3C65F8),
          children: [
            _MenuItem(
                text: "통합검색", onPressed: () => Get.toNamed("/search/total")),
            _MenuItem(
                text: "상세검색", onPressed: () => Get.toNamed("/search/detail"))
          ]),
      _MenuWidget(
          title: "착한 가게 찾기",
          icon: Icons.place_outlined,
          iconColor: const Color(0xFF4B3CF8),
          children: [
            _MenuItem(
                text: "착한 가게", onPressed: () => Get.toNamed("/search/cheap")),
            _MenuItem(
                text: "청년 공간", onPressed: () => Get.toNamed("/search/space")),
            _MenuItem(
                text: "선한 영향력 가게", onPressed: () => Get.toNamed("/search/kind"))
          ]),
      _MenuWidget(
        iconColor: const Color(0xFF6721FC),
        title: "청년 채용 공고 찾기",
        onPressed: () => Get.toNamed("/search/hire"),
        icon: Icons.badge_outlined,
      ),
      _MenuWidget(
        title: "오늘의 뉴스",
        icon: Icons.newspaper,
        iconColor: const Color(0xFFA921FC),
        onPressed: () => Get.toNamed("/news"),
      )
    ];

    return Scaffold(
      appBar: createDefaultAppBar(),
      body: AppPadding(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const TitleWidget(title: "메뉴"),
        Expanded(
          child: ListView.separated(
              itemBuilder: (_, index) => widgets[index],
              separatorBuilder: (_, __) =>
                  SizedBox(height: context.heightTransformer(dividedBy: 40)),
              itemCount: widgets.length),
        )
      ])),
    );
  }
}

class _MenuItem {
  final String text;
  final VoidCallback onPressed;

  const _MenuItem({
    required this.text,
    required this.onPressed,
  });
}

class _MenuWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color iconColor;
  final List<_MenuItem>? children;
  final VoidCallback? onPressed;

  final expanded = false.obs;

  _MenuWidget(
      {Key? key,
      required this.title,
      required this.icon,
      this.children,
      required this.iconColor,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final iconPadding =
        EdgeInsets.only(top: context.heightTransformer(dividedBy: 100));

    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: iconPadding,
        child: Icon(icon, color: iconColor, size: 30),
      ),
      SizedBox(width: context.widthTransformer(dividedBy: 19.5)),
      Flexible(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextButton(
              onPressed: () {
                expanded.toggle();
                onPressed?.call();
              },
              child: Row(
                children: [
                  Text(title,
                      style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.black)),
                  const Expanded(child: SizedBox.shrink()),
                  if (children != null)
                    Padding(
                        padding: iconPadding,
                        child: Obx(() => Icon(
                            expanded.value
                                ? Icons.keyboard_arrow_down
                                : Icons.keyboard_arrow_left,
                            size: 32,
                            color: Colors.black)))
                ],
              )),
          if (children != null)
            Obx(() => expanded.value
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: children!
                        .map((e) => TextButton(
                            onPressed: e.onPressed,
                            child: Text(e.text,
                                style: const TextStyle(
                                    color: Color(0xFFA1A1A1),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20))))
                        .toList())
                : const SizedBox.shrink())
        ]),
      )
    ]);
  }
}
