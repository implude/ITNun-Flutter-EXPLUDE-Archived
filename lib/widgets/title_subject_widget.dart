import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TitleWidget extends StatelessWidget {
  final String title;

  const TitleWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: context.heightTransformer(dividedBy: 30)),
        Text(title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 36)),
        SizedBox(height: context.heightTransformer(dividedBy: 16)),
      ],
    );
  }
}

class TitleSubjectWidget extends StatelessWidget {
  final String title;
  final String subject;

  const TitleSubjectWidget(
      {Key? key, required this.title, required this.subject})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(height: context.heightTransformer(dividedBy: 10)),
      Text(title,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      SizedBox(height: context.heightTransformer(dividedBy: 50)),
      Text(subject,
          style: const TextStyle(
              color: Color(0xFFB1B1B1),
              fontSize: 18,
              fontWeight: FontWeight.w500)),
      SizedBox(height: context.heightTransformer(dividedBy: 15))
    ]);
  }
}
