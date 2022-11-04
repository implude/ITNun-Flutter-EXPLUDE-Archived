import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';

const _textColor = Color(0xff818181);
final _decoration = BoxDecoration(
    color: const Color(0xFFECF0FF), borderRadius: BorderRadius.circular(12));
const _innerPadding = EdgeInsets.all(20);

class _CircleIcon extends StatelessWidget {
  // 목차 나누는 조그만한 동그라미 아이콘
  const _CircleIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: const BoxDecoration(color: appColor, shape: BoxShape.circle),
    );
  }
}

class _CircleBigText extends StatelessWidget {
  // 위의 아이콘과 텍스트를 합친 위젯 (큰목차)
  final String text;

  const _CircleBigText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const _CircleIcon(),
        const SizedBox(width: 8),
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
        )
      ],
    );
  }
}

class _CircleSmallText extends StatelessWidget {
  // 위의 아이콘과 텍스트를 합친 위젯 (소목차)
  final String text;

  const _CircleSmallText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 2),
          child: _CircleIcon(),
        ),
        const SizedBox(width: 8),
        Flexible(
            child: Text(
          text,
          style: const TextStyle(color: _textColor),
        ))
      ],
    );
  }
}

class DetailValueBox extends StatelessWidget {
  //
  const DetailValueBox(
      {Key? key, required this.description, required this.value})
      : super(key: key);

  final String description;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: _innerPadding,
        decoration: _decoration,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(description,
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
            Flexible(
              child: Text(
                textAlign: TextAlign.end,
                value,
                style: const TextStyle(
                    color: _textColor, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ));
  }
}

class SubTitleBox extends StatelessWidget {
  const SubTitleBox({
    Key? key,
    required this.subtitle,
  }) : super(key: key);
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return _CircleBigText(text: subtitle);
  }
}

class PlainTextBox extends StatelessWidget {
  const PlainTextBox({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: _innerPadding,
        decoration: _decoration,
        child: Text(text,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: _textColor,
            )));
  }
}

class InfoBox extends StatelessWidget {
  const InfoBox({
    Key? key,
    required this.title,
    required this.contents,
  }) : super(key: key);
  final String title;
  final List<String> contents;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: _innerPadding,
      decoration: _decoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8),
          ...contents.map(
            (e) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: _CircleSmallText(text: e),
            ),
          )
        ],
      ),
    );
  }
}

class DetailComponent extends StatelessWidget {
  final String? title;
  final List<Widget> children;

  const DetailComponent({Key? key, this.title, required this.children})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      if (title != null) ...[
        SubTitleBox(subtitle: title!),
        SizedBox(height: context.heightTransformer(dividedBy: 50))
      ],
      ...children.map((e) => Padding(
            padding:
                EdgeInsets.only(top: context.heightTransformer(dividedBy: 100)),
            child: e,
          ))
    ]);
  }
}

class NaverMapBox extends StatelessWidget {
  const NaverMapBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: _decoration,
      padding: const EdgeInsets.symmetric(vertical: 100),
      child: const Center(
        child: Text(
          "네이버 지도로 위치 표시",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
        ),
      ),
    );
  }
}

class InfoWithIcon extends StatelessWidget {
  final String info;

  const InfoWithIcon({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _decoration,
      padding: _innerPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.info_outline,
            size: 36,
          ),
          Flexible(
            child: Text(
              info,
              textAlign: TextAlign.end,
            ),
          )
        ],
      ),
    );
  }
}
