import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:itnun/models/news_data.dart';
import 'package:itnun/widgets/app_widgets.dart';

import '../../widgets/appbar_widgets.dart';

class TodayNewsPage extends StatelessWidget {
  const TodayNewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<NewsData> newsList = Get.arguments;

    return Scaffold(
        appBar: createDefaultAppBar(),
        body: AppPadding(
          child: Column(
            children: [
              SizedBox(height: context.heightTransformer(dividedBy: 20)),
              const Center(
                child: Text(
                  "오늘의 뉴스",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: context.heightTransformer(dividedBy: 20)),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (_, index) =>
                        _NewsWidget(data: newsList[index]),
                    separatorBuilder: (_, __) => SizedBox(
                        height: context.heightTransformer(dividedBy: 40)),
                    itemCount: newsList.length),
              )
            ],
          ),
        ));
  }
}

class _NewsWidget extends StatelessWidget {
  final NewsData data;

  const _NewsWidget({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final format = DateFormat("yyyy-MM-dd HH:mm");

    return InkWell(
      onTap: () => Get.toNamed("/news/detail", arguments: data),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFF5F7FE),
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: context.heightTransformer(dividedBy: 60)),
            Text(
              data.content.replaceAll("\n", ""),
              style: const TextStyle(color: Color(0xFF616161)),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: context.heightTransformer(dividedBy: 60)),
            Text(
              "${data.reporter} 기자 | ${format.format(data.registeredAt)}",
              style: const TextStyle(color: Color(0xFF818181)),
            )
          ],
        ),
      ),
    );
  }
}
