import 'package:Weight_control/conponents/reusablecard.dart';
import 'package:Weight_control/constans.dart';
import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1E33),
        title: Text(
          'توضیح های  برنامه',
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
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Text(
                      "شاخص توده بدنی BMI یک ابزار غربالگری پزشکی است که نسبت قد شما به وزن بدنتان را اندازه گیری می کند تا میزان چربی بدن را تخمین بزند",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Lalezar-Regular",
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      " زیر ۱۸.۵ باشد، شخص دچار کاهش وزن است •",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Lalezar-Regular",
                        color: Color(0xFF8D8E98),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      " بین ۱۸.۵ و ۲۴.۹ باشد، شخص در بازه وزن سالم قرار دارد•",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Lalezar-Regular",
                        color: Color(0xFF8D8E98),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "بین ۲۵ و ۲۹.۹ باشد، شخص دچار اضافه وزن است •",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Lalezar-Regular",
                        color: Color(0xFF8D8E98),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "• بالای ۳۵ باشد٬ شخص از چاقی مفرط رنج می برد •",
                      style: TextStyle(
                        fontSize: 16,
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
