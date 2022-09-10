import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';

const _textColor = Color(0xff818181);
final _decoration = BoxDecoration(
    color: const Color(0xFFECF0FF), borderRadius: BorderRadius.circular(12));
const _innerPadding = EdgeInsets.all(20);

class _CircleIcon extends StatelessWidget {
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

class _CircleWithWidget extends StatelessWidget {
  final Widget child;

  const _CircleWithWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [const _CircleIcon(), const SizedBox(width: 8), child],
    );
  }
}

class DetailValueBox extends StatelessWidget {
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
            Text(
              textAlign: TextAlign.end,
              value,
              style: const TextStyle(
                  color: _textColor, fontWeight: FontWeight.w500),
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
    return _CircleWithWidget(
        child: Text(
      subtitle,
      style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
    ));
  }
}

class PlainTextBox extends StatelessWidget {
  const PlainTextBox({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              child: _CircleWithWidget(
                child: Flexible(
                  child: Text(
                    e,
                    style: const TextStyle(color: _textColor),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DetailComponent extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const DetailComponent({Key? key, required this.title, required this.children})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SubTitleBox(subtitle: title),
      SizedBox(height: context.heightTransformer(dividedBy: 50)),
      ...children.map((e) => Padding(
            padding:
                EdgeInsets.only(top: context.heightTransformer(dividedBy: 100)),
            child: e,
          ))
    ]);
  }
}
