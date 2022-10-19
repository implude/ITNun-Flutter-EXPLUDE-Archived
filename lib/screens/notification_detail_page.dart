import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:itnun/widgets/app_widgets.dart';
import 'package:itnun/widgets/appbar_widgets.dart';

class NotificationDetailPage extends StatelessWidget {
  const NotificationDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: createDefaultAppBar(),
      body: _NotificationDetailWidget(
        title :"공지사항 1",
        date : DateTime(2020, 1, 1),
        content : "이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 이수성 일해 "
      )
    );
  }
}

class _NotificationDetailWidget extends StatelessWidget {
  final String title;
  final DateTime date;
  final String content;

  const _NotificationDetailWidget({Key? key,
    required this.date,
    required this.title,
    required this.content
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AppPadding(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: context.heightTransformer(dividedBy: 30)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title,
                        style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold)
                    ),
                    Text(
                      DateFormat("yyyy / MM / dd").format(date),
                      style: const TextStyle(
                        color: Color(0xFFBDBDBD),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                SizedBox(height: context.heightTransformer(dividedBy: 30)),
                Text(
                  content,
                  style : const TextStyle(
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
