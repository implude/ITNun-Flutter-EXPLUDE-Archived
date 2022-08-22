import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color? outlineColor;
  final Color backgroundColor;
  final VoidCallback? onPressed;

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
      width: double.infinity,
      height: context.heightTransformer(dividedBy: 14),
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              backgroundColor: backgroundColor,
              side: outlineColor == null
                  ? BorderSide.none
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

class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final bool obscureText;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final int? maxLength;

  const AppTextField(
      {Key? key,
      this.controller,
      required this.label,
      this.obscureText = false,
      this.keyboardType,
      this.onChanged,
      this.maxLength})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        maxLength: maxLength,
        onChanged: onChanged,
        keyboardType: keyboardType,
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
            counterText: "",
            contentPadding: EdgeInsets.symmetric(
                horizontal: 46,
                vertical: context.heightTransformer(dividedBy: 30)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Color(0xFFD1D1D1))),
            label:
                Text(label, style: const TextStyle(color: Color(0xFFD1D1D1))),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(16))));
  }
}

class AppPadding extends StatelessWidget {
  final Widget child;

  const AppPadding({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: context.widthTransformer(dividedBy: 13.1)),
        child: child);
  }
}
