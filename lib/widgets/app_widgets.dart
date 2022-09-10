import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

typedef AppFormFieldValidator = bool Function(String);

class AppSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const AppSwitch({Key? key, required this.value, required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
        width: context.widthTransformer(dividedBy: 9),
        height: context.heightTransformer(dividedBy: 36),
        activeColor: const Color(0xFF3C65F8),
        inactiveColor: Colors.transparent,
        inactiveToggleColor: const Color(0xFFD1D1D1),
        inactiveSwitchBorder: Border.all(color: const Color(0xFFD1D1D1)),
        toggleSize: 16,
        padding: 3,
        value: value,
        onToggle: onChanged);
  }
}

class LogoWithText extends StatelessWidget {
  final double width;

  const LogoWithText({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Image.asset("assets/images/logo_outlined.png"),
          ),
          const SizedBox(width: 10),
          const Expanded(
            flex: 2,
            child: FittedBox(
              child: Text(
                "잇는",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class FocusUnSetter extends StatelessWidget {
  final Widget child;

  const FocusUnSetter({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      behavior: HitTestBehavior.opaque,
      child: child,
    );
  }
}

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
  final AppFormFieldValidator? validator;

  const AppTextField(
      {Key? key,
      this.controller,
      required this.label,
      this.obscureText = false,
      this.keyboardType,
      this.onChanged,
      this.maxLength,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autovalidateMode: AutovalidateMode.always,
        validator: validator == null
            ? null
            : ((s) => s != null && validator!(s) ? null : ""),
        maxLength: maxLength,
        onChanged: onChanged,
        keyboardType: keyboardType,
        obscureText: obscureText,
        controller: controller,
        decoration: InputDecoration(
            errorStyle: const TextStyle(fontSize: 0),
            counterText: "",
            contentPadding: EdgeInsets.symmetric(
                horizontal: 46,
                vertical: context.heightTransformer(dividedBy: 30)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide:
                    const BorderSide(color: Color(0xFFD1D1D1), width: 2)),
            label:
                Text(label, style: const TextStyle(color: Color(0xFFD1D1D1))),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(width: 2))));
  }
}

class AppPadding extends StatelessWidget {
  final Widget child;

  const AppPadding({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: context.widthTransformer(dividedBy: 15)),
        child: child);
  }
}

class SearchTextField extends StatelessWidget {
  final Color borderColor;
  final Color iconColor;
  final VoidCallback onPressed;

  const SearchTextField(
      {Key? key,
      required this.borderColor,
      required this.iconColor,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(13),
      borderSide: BorderSide(color: borderColor, width: 3),
    );
    return TextField(
      decoration: InputDecoration(
        enabledBorder: border,
        focusedBorder: border,
        contentPadding: EdgeInsets.symmetric(
            vertical: context.heightTransformer(dividedBy: 36), horizontal: 46),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 24),
          child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                Icons.search,
                color: iconColor,
                size: 32,
              )),
        ),
        hintText: "이곳에 입력",
      ),
    );
  }
}


