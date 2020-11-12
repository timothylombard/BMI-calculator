import 'dart:math';
class CalculatorBrain {

  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow((height/100), 2);
    print('BMI is $_bmi');
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30) {
      return 'Obese';
    }
    else if (_bmi > 25 && _bmi <= 30) {
      return 'Overweight';
    }
    else if (_bmi >= 18.5 && _bmi <= 25){
      return 'Normal weight';
    }
    else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi > 30) {
      return 'Your weight could be a serious health issue. It is important that you take action to loose weight';
    }
    else if (_bmi > 25 && _bmi <= 30) {
      return 'Your weight is a bit too high. Try to exercise more and watch your food intake';
    }
    else if (_bmi >= 18.5 && _bmi <= 25){
      return 'You have normal body weight. Excellent! ';
    }
    else {
      return 'You have lower than normal body weight, You can eat a bit more.';
    }
  }

}