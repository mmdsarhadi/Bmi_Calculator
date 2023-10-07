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
      return "وزن بدن شما بالاتر از حد طبیعی است. سعی کنید بیشتر ورزش کنید";
    }
    else if (_bmi >= 18.5) {
      return '! شما وزن طبیعی دارید. آفرین';
    }
    else {
      return 'شما وزن بدنی کمتر از حد معمول دارید. می توانید کمی بیشتر بخورید';
    }
  }

  String getResault() {
    if (_bmi >= 25) {
      return 'اضافه وزن';
    }

    if (_bmi >= 18.5) {
      return "طبیعی";
    }

    else {
      return "کمبود وزن";
    }
  }






}
