import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25){
      return 'Sobrepeso';
    } else if (_bmi > 18.5){
      return 'Normal';
    } else {
      return 'Abaixo do ideal';
    }
  }

  String getInterpretarion(){
    if (_bmi >= 25){
      return 'Você tem sobrepeso Tente se exercitar mais.';
    } else if (_bmi > 18.5){
      return 'Você está dentro do peso ideal. Bom trabalho!';
    } else {
      return 'Você está abaixo do peso ideal. Você pode comer um pouco mais.';
    }
  }
}