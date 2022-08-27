import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widgets = [
      _MenuWidget(
          title: "청년 정책 찾기",
          icon: Icons.how_to_vote,
          children: const ["통합검색", "상세검색"]),
      _MenuWidget(
          title: "착한 가게 찾기",
          icon: Icons.place,
          children: const ["착한 가게", "청년 공간", "선한 영향력 가게"]),
      _MenuWidget(
          title: "청년 채용 광고 찾기",
          icon: Icons.badge,
          children: const ["아르바이트", "인턴", "계약직", "정규직"]),
      _MenuWidget(
          title: "오늘의 뉴스",
          icon: Icons.newspaper,
          iconColor: const Color(0xFFA921FC))
    ];

    return Scaffold(
      appBar: createDefaultAppBar(),
      body: AppPadding(
          child: Column(children: [
        SizedBox(height: context.heightTransformer(dividedBy: 30)),
        const Text("메뉴",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36)),
        SizedBox(height: context.heightTransformer(dividedBy: 20)),
        Expanded(
          child: ListView.separated(
              itemBuilder: (_, index) => widgets[index],
              separatorBuilder: (_, __) =>
                  SizedBox(height: context.heightTransformer(dividedBy: 30)),
              itemCount: widgets.length),
        )
      ])),
    );
  }
}

class _MenuWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color? iconColor;
  final List<String>? children;

  final expanded = false.obs;

  _MenuWidget(
      {Key? key,
      required this.title,
      required this.icon,
      this.children,
      this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final iconPadding =
        EdgeInsets.only(top: context.heightTransformer(dividedBy: 100));

    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: iconPadding,
        child:
            Icon(icon, color: iconColor ?? const Color(0xFF4B3CF8), size: 30),
      ),
      SizedBox(width: context.widthTransformer(dividedBy: 19.5)),
      Flexible(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TextButton(
              onPressed: expanded.toggle,
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
                            onPressed: () {},
                            child: Text(e,
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
