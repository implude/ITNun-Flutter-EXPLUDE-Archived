import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color? outlineColor;
  final Color backgroundColor;
  final VoidCallback onPressed;

  const AppButton(
      {Key? key,
      required this.text,
      required this.textColor,
      this.outlineColor,
      required this.backgroundColor,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.widthTransformer(dividedBy: 1.1),
      height: context.heightTransformer(dividedBy: 14),
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              backgroundColor: backgroundColor,
              side: outlineColor == null
                  ? null
                  : BorderSide(width: 2.0, color: outlineColor!),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)))),
          onPressed: onPressed,
          child: Text(text,
              style: TextStyle(
                  color: textColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold))),
    );
  }
}
