import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';

class NotificationPage extends StatelessWidget {
  final _dataList = [
    _NotificationData(
      title: "공지사항 1",
      content: "공지사항 예시 1이에요. 자세히 보려면 터치해 주세요.",
      date: DateTime(2020, 1, 1),
      isNew: true,
    ),
    _NotificationData(
      title: "공지사항 2",
      content: "공지사항 예시 2이에요. 자세히 보려면 터치해 주세요.",
      date: DateTime(2020, 1, 1),
      isNew: true,
    ),
    _NotificationData(
      title: "공지사항 3",
      content: "공지사항 예시 3이에요. 자세히 보려면 터치해 주세요.",
      date: DateTime(2020, 1, 1),
      isNew: false,
    ),
    _NotificationData(
      title: "공지사항 4",
      content: "공지사항 예시 4이에요. 자세히 보려면 터치해 주세요.",
      date: DateTime(2020, 1, 1),
      isNew: false,
    ),
    _NotificationData(
      title: "공지사항 5",
      content: "공지사항 예시 5이에요. 자세히 보려면 터치해 주세요.",
      date: DateTime(2020, 1, 1),
      isNew: false,
    ),
    // 데이터는 여기에다가 추가하기
  ];

  NotificationPage({Key? key}) : super(key: key);

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
                      _NotificationGroup(data: _dataList[index]),
                  separatorBuilder: (_, __) => const Divider(
                        color: Color(0xFFC1C1C1),
                        thickness: 0.2,
                      ),
                  itemCount: _dataList.length)),
        ],
      )),
    );
  }
}

class _NotificationGroup extends StatelessWidget {
  final _NotificationData data;

  const _NotificationGroup({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: context.heightTransformer(dividedBy: 45),
      ),
      Row(children: [
        if (data.isNew)
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Image.asset('assets/images/isNew.png'),
          ),
        Text(data.title,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            )),
        const Expanded(child: SizedBox.shrink()),
        Text(
          DateFormat("yyyy / MM / dd").format(data.date),
          style: const TextStyle(
            color: Color(0xFFBDBDBD),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        )
      ]),
      SizedBox(
        height: context.heightTransformer(dividedBy: 30),
      ),
      Text(data.content,
          style: const TextStyle(
            color: Color(0xFFB1B1B1),
            fontSize: 18,
            fontWeight: FontWeight.w500,
          )),
      SizedBox(
        height: context.heightTransformer(dividedBy: 45),
      )
    ]);
  }
}

class _NotificationData {
  final String title;
  final String content;
  final DateTime date;
  final bool isNew;

  const _NotificationData({
    required this.title,
    required this.content,
    required this.date,
    required this.isNew,
  });
}
