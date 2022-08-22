import 'package:flutter/material.dart';

class ExpandedSingleChildScrollView extends StatelessWidget {
  final Widget child;

  const ExpandedSingleChildScrollView({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraint) => SingleChildScrollView(
              child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraint.maxHeight),
                  child: IntrinsicHeight(child: child)),
            ));
  }
}
