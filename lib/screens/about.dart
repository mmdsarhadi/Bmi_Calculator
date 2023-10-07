import 'package:Weight_control/conponents/reusablecard.dart';
import 'package:Weight_control/constans.dart';
import 'package:flutter/material.dart';

class about extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1E33),
        title: Text(
          'تماس با ما',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontFamily: "Lalezar-Regular",
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(15),

          )),
          Expanded(
            flex: 5,
            child: reusablecard(
              child: Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Column(
                  children: [
                    Text(
                      "ایمیل برای پیشنهادات و نظرات شما عزیزان",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Lalezar-Regular",
                      ),
                    ),
                    SizedBox(width: 50,),

                    Text(
                      "mmdsarhadi2@gmail.com",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Lalezar-Regular",
                        color: Color(0xFF8D8E98),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
