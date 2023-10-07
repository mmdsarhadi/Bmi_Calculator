import 'package:Weight_control/calculator.dart';
import 'package:Weight_control/conponents/bottm_buttn.dart';
import 'package:Weight_control/conponents/reusablecard.dart';
import 'package:Weight_control/constans.dart';
import 'package:Weight_control/screens/result_page.dart';
import 'package:Weight_control/conponents/reusablecard.dart';
import 'package:Weight_control/conponents/round_icon_botton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../conponents/infomationn.dart';

enum Gender { male, fmale }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGendere;
  int height = 160;
  int weight = 50;
  int age = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(


          backgroundColor: Color(0xFF1D1E33),
          title: Text('BMI CALCULATOR'),
          centerTitle: true,

        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGendere = Gender.male;
                    });
                  },
                  child: reusablecard(
                    color: selectedGendere == Gender.male
                        ? activecardcolor
                        : inactivecardcolor,
                    child:
                        infomationn(ICON: FontAwesomeIcons.mars, name: "MALE"),
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGendere = Gender.fmale;
                    });
                  },
                  child: reusablecard(
                    color: selectedGendere == Gender.fmale
                        ? activecardcolor
                        : inactivecardcolor,
                    child: infomationn(
                        ICON: FontAwesomeIcons.venus, name: "FEMALE"),
                  ),
                ))
              ],
            )),
            Expanded(
                child: reusablecard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: lableTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        "cm",
                        style: lableTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        trackHeight: 1,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        overlayColor: Color(0x1fEB1555),
                        thumbColor: Color(0xFFEB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 18),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30)),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                          ;
                        }),
                  )
                ],
              ),
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: reusablecard(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "WEIGHT",
                        style: lableTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kNumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPress: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPress: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: reusablecard(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "AGE",
                        style: lableTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: kNumberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPress: () {
                              setState(() {
                                age--;
                                if (age == 0) {
                                  age == 0;
                                }
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPress: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                )),
              ],
            )),
            BottomButton(
              title: ("CALCULATE"),
              ontab: () {
                Calculator calculator = Calculator( height : height,weight: weight  );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Resultspage(
                      bmiResult: calculator.calculatorBmi(),
                      resultText: calculator.getResault(),
                      interpretation: calculator.getInterpretation(),
                    ),
                  ),
                );
              },
            )
          ],
        ));
  }
}
