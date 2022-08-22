import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final bool obscureText;

  const AppTextField(
      {Key? key,
      this.controller,
      required this.label,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.widthTransformer(dividedBy: 1.1),
      child: TextField(
          obscureText: obscureText,
          controller: controller,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                  horizontal: 36,
                  vertical: context.heightTransformer(dividedBy: 30)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: const BorderSide(color: Color(0xFFD1D1D1))),
              label:
                  Text(label, style: const TextStyle(color: Color(0xFFD1D1D1))),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16)))),
    );
  }
}
