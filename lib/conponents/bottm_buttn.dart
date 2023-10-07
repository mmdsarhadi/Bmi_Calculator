import 'package:Weight_control/constans.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String ? title;
  final VoidCallback? ontab;

  BottomButton({

    required this.title, required this.ontab});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontab,
      child: Container(
        child: Center(child: Text(title!, style: kLargeButtonTextStyle,)),
        color: BottomContinercolor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottemContinerHeight,
      ),
    );
  }
}