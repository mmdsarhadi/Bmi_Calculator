import 'package:Weight_control/conponents/bottm_buttn.dart';
import 'package:Weight_control/constans.dart';
import 'package:Weight_control/conponents/reusablecard.dart';
import 'package:flutter/material.dart';

class Resultspage extends StatelessWidget {
  final String? bmiResult, resultText, interpretation;

  Resultspage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1E33),

        title: Text("صفحه نتایج",style: TextStyle(fontFamily: "Lalezar-Regular", fontSize: 24),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(15),
            child: Text(
              'نتیجه شما',
              style: kTitleTextStyle,
            ),
          )),
          Expanded(
            flex: 5,
            child: reusablecard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText!.toUpperCase(),
                    style: kRsultTextStyle,
                  ),
                  Text(
                    bmiResult!,
                    style: kBMITextStyle,
                  ),
                  Column(
                    children: [
                      Text(
                        "محدوده نرمال شاخص توده  بدنی",
                        style: kgrayBodyTextStyle,
                      ),


                      Text(
                        "18.5 - 25 kg/m2",
                        style: kBodyTextStyle,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      interpretation!,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            title: 'دوباره محاسبه کنید',
            ontab: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
