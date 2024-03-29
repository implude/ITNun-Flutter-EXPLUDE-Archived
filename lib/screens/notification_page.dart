import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';

final dataList = [
  _NotificationData(
      title: "공지사항 1",
      subtitle: "공지사항 예시 1이에요. 자세히 보려면 터치해 주세요.",
      date: DateTime(2020, 1, 1),
      isNew: true.obs,
      content:
          "이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 "),
  _NotificationData(
      title: "공지사항 2",
      subtitle: "공지사항 예시 2이에요. 자세히 보려면 터치해 주세요.",
      date: DateTime(2020, 1, 1),
      isNew: true.obs,
      content:
          "이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 이동헌 일해 "),
  _NotificationData(
      title: "공지사항 3",
      subtitle: "공지사항 예시 3이에요. 자세히 보려면 터치해 주세요.",
      date: DateTime(2020, 1, 1),
      isNew: false.obs,
      content:
          "김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 김태윤 일해 "),
  _NotificationData(
      title: "공지사항 4",
      subtitle: "공지사항 예시 4이에요. 자세히 보려면 터치해 주세요.",
      date: DateTime(2020, 1, 1),
      isNew: false.obs,
      content:
          "김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 김석환 일해 "),
  _NotificationData(
      title: "공지사항 5",
      subtitle: "공지사항 예시 5이에요. 자세히 보려면 터치해 주세요.",
      date: DateTime(2020, 1, 1),
      isNew: false.obs,
      content:
          "정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 정선우 일해 "),
  // 데이터는 여기에다가 추가하기
];

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: AppPadding(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: context.heightTransformer(dividedBy: 30)),
          const Text(
            "공지사항",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: context.heightTransformer(dividedBy: 50)),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (_, index) =>
                      _NotificationGroup(data: dataList, index: index),
                  separatorBuilder: (_, __) => const Divider(
                        color: Color(0xFFC1C1C1),
                        thickness: 0.2,
                      ),
                  itemCount: dataList.length)),
        ],
      )),
    );
  }
}

class _NotificationGroup extends StatelessWidget {
  final List<_NotificationData> data;
  final int index;

  const _NotificationGroup({Key? key, required this.data, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        data[index].isNew.toggle();
        Get.toNamed("/notification/detail", arguments: data[index]);
      },
      child: Column(children: [
        SizedBox(
          height: context.heightTransformer(dividedBy: 45),
        ),
        Obx(() => Row(children: [
              if (data[index].isNew.value)
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Image.asset('assets/images/isNew.png'),
                ),
              Text(data[index].title,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  )),
              const Expanded(child: SizedBox.shrink()),
              Text(
                DateFormat("yyyy / MM / dd").format(data[index].date),
                style: const TextStyle(
                  color: Color(0xFFBDBDBD),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              )
            ])),
        SizedBox(
          height: context.heightTransformer(dividedBy: 30),
        ),
        Text(data[index].subtitle,
            style: const TextStyle(
              color: Color(0xFFB1B1B1),
              fontSize: 18,
              fontWeight: FontWeight.w500,
            )),
        SizedBox(
          height: context.heightTransformer(dividedBy: 45),
        )
      ]),
    );
  }
}

class _NotificationData {
  final String title;
  final String subtitle;
  final DateTime date;
  final RxBool isNew;
  final String content;

  const _NotificationData(
      {required this.title,
      required this.subtitle,
      required this.date,
      required this.isNew,
      required this.content});
}
