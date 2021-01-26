import 'dart:math';

class CalculatorBrain{
  final int height;
  final int weight;
  double _bmi;
  CalculatorBrain({this.height,this.weight});

  String calculateBMI()
  {
    _bmi = weight/ pow(height/100, 2);
    print(_bmi);// as height in cm ,so convert it to meter.
    return _bmi.toStringAsFixed(1);   //fractionalDigits = 1
   }
   String getResult(){
    if( _bmi < 18.5){
      return "UnderWeight";
    }
    else if(_bmi >= 18.5 && _bmi <25){
      return "Normal";
    }
    else if(_bmi >= 25 && _bmi <30){
      return "Overweight";
    }
    else if(_bmi >30){
      return "Obese";
    }
   }

  String getInterpretation()
  {
    if(_bmi<18.5){
      return "You have lower than normal body Weight. You can eat a bit more.";
    }
    else if(_bmi >= 18.5 && _bmi <25){
      return "You have a normal body Weight. Good job.";
    }
    else if(_bmi >= 25 && _bmi <30){
      return "You have higher than normal body Weight. Try to exercise more.";
    }
    else if(_bmi >30){
      return "You are suffer in obesity please go to doctor and take consult.";
    }
  }
}

