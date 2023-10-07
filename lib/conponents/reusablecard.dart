import 'package:Weight_control/constans.dart';
import 'package:flutter/cupertino.dart';

class reusablecard extends StatelessWidget {
  final Color? color;
  final Widget? child;

  reusablecard({this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      decoration: BoxDecoration(
          color: color ?? activecardcolor,
          borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
    );
  }
}
