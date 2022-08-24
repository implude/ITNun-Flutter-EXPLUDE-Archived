import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/widgets/appbar_widgets.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/title_subject_widget.dart';

class NotificationPage extends StatelessWidget {
  final _dataList=[
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
        child:Column(
          children:[
            _NotificationGroup(
              
            )
          ]
        ),
      ),
    );
  }
}

class _NotificationGroup extends StatelessWidget {
  final _NotificationData data;
  const _NotificationGroup({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final children = <Widget>[
      Padding(
        padding:EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: Text(data.title)
      ),
      Padding(
          padding:EdgeInsets.fromLTRB(0, 0, 30, 0),
          child: Text(data.date),
      ),
    ];

    if(data.isNew) {
      children.insert(0, Image.asset('images/new.svg'));
    }

    return Container(
      child:Column(
        children:[
          Row(
            children:children,
          ),
          Padding(
            padding:EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Text(data.content),
          )
        ]
      )
    );
  }
}



class _NotificationData
{
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