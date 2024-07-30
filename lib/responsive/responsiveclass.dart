import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  responsive(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.desktop});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return LayoutBuilder(builder: (context, Constraints) {
      if (Constraints.maxWidth < 700) {
        return Container(
          width: size.width,
          height: size.height,
          color: Colors.amber.shade50,
          child: mobile,
        );
      } else if (Constraints.maxWidth < 1200) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
          child: Container(
            width: size.width,
            height: size.height,
            color: Colors.amber.shade50,
            child: tablet,
          ),
        );
      } else {
        return Container(
          child: desktop,
        );
      }
    });
  }
}
