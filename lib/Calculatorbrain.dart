import 'dart:math';

class Calculatorbrain
{
  Calculatorbrain(this.height,this.weight);

  final int height;
  final int weight;

  double _bmivalue=0;

  String CalculateBMI()
  {
    _bmivalue = weight / pow(height/100, 2); 
    return _bmivalue.toStringAsFixed(1); 
  }

  String bmisuggestion()
  {
    if(_bmivalue >= 25)
    {
      return "overweight";
    }
    else if(_bmivalue > 18.5)
    {
      return "Normal";
    }
    else
    {
      return "UnderWeight";
    }
  }


  String bmiinterpretation()
  {
    if(_bmivalue >= 25)
    {
      return "You have a higher body weight than normal, try to exercise more";
    }
    else if(_bmivalue > 18.5)
    {
      return "You have a Normal body weight, Good Job!";
    }
    else
    {
      return "You have a lower body weight than usual, try eating more than usual";
    }
  }
}