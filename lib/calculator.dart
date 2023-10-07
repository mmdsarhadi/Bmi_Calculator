import 'dart:math';

import 'package:flutter/material.dart';

class Calculator {
  final int? height;
  final int? weight;
  double _bmi = 0;


  Calculator({@required this.height, @required this.weight}) ;

  String calculatorBmi() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "You have a higher than normal body weight. Try to exercise more.";
    }
    else if (_bmi >= 18.5) {
      return 'You Have a Normal Body Weight. Good Job!';
    }
    else {
      return 'ou Have a Lower Than Normal Body Weight. You Can Eat a Bit More';
    }
  }

  String getResault() {
    if (_bmi >= 25) {
      return 'Overweight';
    }

    if (_bmi >= 18.5) {
      return "Normal";
    }

    else {
      return "Underweight";
    }
  }






}
