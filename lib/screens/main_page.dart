import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/constants.dart';
import 'package:itnun/widgets/app_widgets.dart';

import '../widgets/search_widgets.dart';

const _innerPadding = EdgeInsets.all(20);

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final separator =
        SizedBox(height: context.heightTransformer(dividedBy: 50));
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: context.widthTransformer(dividedBy: 390/23)),
          child: IconButton(
              iconSize: 36,
              onPressed: () => Get.toNamed("/menu"),
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              )),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: context.widthTransformer(dividedBy: 390/23)),
          child: Row(
            children: [
              IconButton(
                  iconSize: 36,
                  onPressed: () => Get.toNamed("/notification"),
                  icon: const Icon(
                    Icons.notifications_none,
                    color: Colors.black,
                  )),
              SizedBox(
                width: context.widthTransformer(dividedBy: 390/5),
              ),
              IconButton(
                  iconSize: 36,
                  onPressed: () => Get.toNamed("/account"),
                  icon: const Icon(
                    Icons.account_circle_outlined,
                    color: Colors.black,
                  ))

            ],
          ),
          ),

        ],
        backgroundColor: Colors.transparent,
        elevation: 0
      ),
      body: FocusUnSetter(
        child: AppPadding(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: context.heightTransformer(dividedBy: 30)),
                LogoWithText(width: context.widthTransformer(dividedBy: 3.6)),
                SizedBox(height: context.heightTransformer(dividedBy: 30)),
                SearchTextField(
                  borderColor: appColor,
                  iconColor: appColor.withOpacity(0.5),
                  onPressed: () {},
                ),
                separator,
                _NewInfoPageView(
                  items: [
                    _NewInfoWidget(
                        name: "EXPLUDE 디미고점",
                        title: "신규 착한 가게",
                        onPressed: () {}),
                    _NewInfoWidget(
                        name: "EXPLUDE",
                        title: "신규 청년 채용 공고",
                        onPressed: () {}),
                    _NewInfoWidget(
                        name: "EXPLUDE 지원안",
                        title: "신규 청년 정책",
                        onPressed: () {})
                  ],
                ),
                separator,
                Row(
                  children: [
                    _FindWidget(
                      name: "청년 정책 찾기",
                      backgroundColor: appColor,
                      onPressed: () => Get.toNamed("/search/total"),
                      icon: Icons.how_to_vote_outlined,
                    ),
                    Container(width: 26),
                    _FindWidget(
                        name: "착한 가게 찾기",
                        backgroundColor: const Color(0xFF4B3CF8),
                        onPressed: () => Get.toNamed("/search/cheap"),
                        icon: Icons.place_outlined)
                  ],
                ),
                separator,
                const _FindJobWidget(),
                separator,
                const _InfoWidget(),
                separator,
                const _TodayNewsWidget(news: [
                  "\"청년이 만든 자율예산 사업\"...서울시, 시민투표 실시",
                  "뉴질랜드 현지취업...한인청년 취업박람회 개최",
                  "\"지친 청년의 마음에 보탬을\"...서울시, '마음건강 앱'..."
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _NewInfoPageView extends StatelessWidget {
  final List<_NewInfoWidget> items;
  final _index = 0.obs;

  _NewInfoPageView({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: context.heightTransformer(dividedBy: 9.2),
          child: PageView(onPageChanged: _index, children: items),
        ),
        const SizedBox(height: 10),
        Obx(() => Wrap(
              spacing: 6,
              children: List.generate(
                items.length,
                (index) => Container(
                  decoration: BoxDecoration(
                      color: index == _index.value
                          ? const Color(0xFFC9C9C9)
                          : const Color(0xFFF1F1F1),
                      shape: BoxShape.circle),
                  width: 6,
                  height: 6,
                ),
              ),
            ))
      ],
    );
  }
}

class _TodayNewsWidget extends StatelessWidget {
  final List<String> news;

  const _TodayNewsWidget({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Text("오늘의 뉴스",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const Expanded(child: SizedBox.shrink()),
              TextButton(
                  onPressed: () => Get.toNamed("/news"),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.arrow_back_ios_new,
                        color: Color(0xFFC1C1C1),
                      ),
                      Text(
                        "자세히 보기",
                        style: TextStyle(
                            color: Color(0xFFC1C1C1),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )
                    ],
                  ))
            ],
          ),
        ),
        ...news.map((e) => Padding(
              padding: EdgeInsets.only(
                  bottom: context.heightTransformer(dividedBy: 50)),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xFFF5F7FE),
                    borderRadius: BorderRadius.circular(12)),
                padding: _innerPadding,
                child: Text(
                  e,
                  style: const TextStyle(color: Color(0xFF616161)),
                ),
              ),
            ))
      ],
    );
  }
}

class _InfoWidget extends StatelessWidget {
  const _InfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: _innerPadding,
        decoration: BoxDecoration(
          color: const Color(0xFFE9E9E9),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "사람과 정책을 잇는.",
                  style: TextStyle(
                      color: Color(0xFF565656), fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  "나에게 필요한 정보가 모두 한 손 안에.",
                  style: TextStyle(fontSize: 10, color: Color(0xFFA1A1A1)),
                )
              ],
            ),
            const Expanded(child: SizedBox.shrink()),
            const Icon(
              Icons.info_outline,
              color: Color(0xFFC1C1C1),
              size: 24,
            )
          ],
        ));
  }
}

class _FindJobWidget extends StatelessWidget {
  const _FindJobWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: (){Get.toNamed("/search/hire");},
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xFF6721FC),
            borderRadius: BorderRadius.circular(12)),
        padding: _innerPadding,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "청년 채용 공고 찾기",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: context.heightTransformer(dividedBy: 844/9)),
                  child: Row(
                    children: const [
                      Text(
                        "바로가기",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 16,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Expanded(child: SizedBox.shrink()),
            const Icon(
              Icons.badge_outlined,
              size: 40,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

class _FindWidget extends StatelessWidget {
  final String name;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final IconData icon;

  const _FindWidget({
    Key? key,
    required this.name,
    required this.backgroundColor,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: _innerPadding,
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(12)),
        child: RawMaterialButton(
          onPressed: onPressed,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              Padding(
                padding: EdgeInsets.symmetric(vertical: context.heightTransformer(dividedBy: 844/9)),
                child: Row(
                  children: const [
                    Text(
                      "바로가기",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 16,
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  icon,
                  size: 40,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _NewInfoWidget extends StatelessWidget {
  final String title;
  final String name;
  final VoidCallback onPressed;

  const _NewInfoWidget(
      {Key? key,
      required this.name,
      required this.title,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: appColor, borderRadius: BorderRadius.circular(12)),
      padding: _innerPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600),
          ),
          Row(
            children: [
              Text(
                name,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const Expanded(child: SizedBox.shrink()),
              _GoButton(onPressed: onPressed)
            ],
          )
        ],
      ),
    );
  }
}

class _GoButton extends StatelessWidget {
  final VoidCallback onPressed;

  const _GoButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap),
      onPressed: onPressed,
      child: Row(
        children: const [
          Text(
            "바로가기",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 16,
          )
        ],
      ),
    );
  }
}
