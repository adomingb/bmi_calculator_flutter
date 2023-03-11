import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(this.weight, this.height);

  final int weight;
  final int height;
  double _bmi = 22.0;

  String getBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResultText() {
    if (_bmi > 25) {
      return 'ZAMPABOLLOS';
    } else if (_bmi > 18.5) {
      return 'NOSTAMAL';
    } else {
      return 'CADAVER';
    }
  }

  String getInterpretationText() {
    if (_bmi > 25) {
      return 'Una croqueta más y explotas...';
    } else if (_bmi > 18.5) {
      return 'A ver cuanto duras...';
    } else {
      return 'Tanto tofu, tanto tofu...';
    }
  }
}
