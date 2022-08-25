import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/title_subject_widget.dart';

class NotificationPage extends StatelessWidget {
  final _dataList = [
    const _NotificationData(
      title: "공지사항 1",
      content: "공지사항 예시 1이에요. 자세히 보려면 터치해 주세요.",
      date: "2020.01.01",
      isNew: true,
    ),
  ];

  NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: createDefaultAppBar(),
      body: AppPadding(
        child: Column(
          children:[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                TitleSubjectWidget(
                  title: "공지사항",
                  subject: "",
                ),
              ],
            ),
            ..._dataList.map((e) => _NotificationGroup(data: e))
          ],
        )
      ),
    );
  }
}

class _NotificationGroup extends StatelessWidget {
  final _NotificationData data;

  const _NotificationGroup({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
        height:context.heightTransformer(dividedBy:7.5),
        child: Column(
            children: [
              Row(
                children: [
                  if(data.isNew) Image.asset('assets/images/isNew.png'),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child :Text(
                        data.title,
                      style:const TextStyle(
                        fontSize:25,
                        fontWeight: FontWeight.bold,
                      )
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.fromLTRB(context.widthTransformer(dividedBy: 2), 0, 0, 0),
                  Align(
                    alignment: Alignment.topRight ,
                    child :Text(
                        data.date,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      )
                    ),
                  ),
                ]
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text(
                  data.content,
                  style: const TextStyle(
                    color: Color(0xFFB1B1B1),
                    fontSize:18,
                    fontWeight:FontWeight.w500,
                  )
                ),
              )
          ]
        )
    );
  }
}

class _NotificationData {
  final String title;
  final String content;
  final String date;
  final bool isNew;

  const _NotificationData({
    required this.title,
    required this.content,
    required this.date,
    required this.isNew,
  });
}
