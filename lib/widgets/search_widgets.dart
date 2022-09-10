import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itnun/widgets/app_widgets.dart';

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

class _SearchTemplate extends StatelessWidget {
  final String title;
  final Color? borderColor;
  final Color? iconColor;

  final String subtitle;
  final Widget child;
  final VoidCallback? onSearchPressed;

  const _SearchTemplate(
      {Key? key,
      required this.title,
      required this.borderColor,
      required this.iconColor,
      required this.subtitle,
      required this.child,
      required this.onSearchPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FocusUnSetter(
      child: AppPadding(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: context.heightTransformer(dividedBy: 22.10)),
              Center(
                child: Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 32),
                ),
              ),
              SizedBox(height: context.heightTransformer(dividedBy: 22.10)),
              if (borderColor != null &&
                  iconColor != null &&
                  onSearchPressed != null) ...[
                SearchTextField(
                    borderColor: borderColor!,
                    iconColor: iconColor!,
                    onPressed: onSearchPressed!),
                SizedBox(height: context.heightTransformer(dividedBy: 28.13))
              ],
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  subtitle,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: context.heightTransformer(dividedBy: 27.22),
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}

class SearchWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color? borderColor;
  final Color? iconColor;
  final VoidCallback? onSearchPressed;

  final List<Widget> children;

  const SearchWidget(
      {Key? key,
      required this.title,
      required this.subtitle,
      this.borderColor,
      this.iconColor,
      required this.children,
      this.onSearchPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _SearchTemplate(
        onSearchPressed: onSearchPressed,
        title: title,
        borderColor: borderColor,
        iconColor: iconColor,
        subtitle: subtitle,
        child: Column(
            children: children
                .map(
                  (e) => Padding(
                    padding: EdgeInsets.only(
                      bottom: context.heightTransformer(dividedBy: 60),
                    ),
                    child: e,
                  ),
                )
                .toList()));
  }
}

class SearchDetailWidget extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const SearchDetailWidget(
      {Key? key, required this.title, required this.children})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: AppPadding(
          child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: context.heightTransformer(dividedBy: 30)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            title,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          ...children.map((e) => Padding(
                padding: EdgeInsets.only(
                    top: context.heightTransformer(dividedBy: 30)),
                child: e,
              ))
        ]),
      )),
    );
  }
}
