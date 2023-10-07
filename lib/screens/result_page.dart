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

        title: Text("Ruslts page"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.all(15),
            child: Text(
              'Your Result',
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
                        "Normal BMI Range :",
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
            title: 'RE-CALCULATE',
            ontab: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
