import 'package:flutter/cupertino.dart';

class infomationn extends StatelessWidget {
  final IconData? ICON;
  final String ? name;

   infomationn({

     this.ICON,
     this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          ICON,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          name!,
          style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98)),
        )
      ],
    );
  }
}
