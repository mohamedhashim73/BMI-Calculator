import 'package:flutter/cupertino.dart';
// Age
class Age extends ChangeNotifier{
  int age_val = 20;
  increment_age(){
    age_val++;
    notifyListeners();
  }
  decrement_age(){
    age_val--;
    notifyListeners();
  }
}
// Weight
class Weight extends ChangeNotifier{
  int weight_val = 75;
  increment_weight(){
    weight_val++;
    notifyListeners();
  }
  decrement_weight(){
    weight_val--;
    notifyListeners();
  }
}
// Height
class Height extends ChangeNotifier{
  double value = 10.0;
  override(double val){
    value = val;
    notifyListeners();
  }
}
// Gender
class Gender_Type extends ChangeNotifier{
  int index = 0 ;
  String type = "undefined";
  type_male(){
    index = 1;
    type ="Male";
    notifyListeners();
  }
  type_female(){
    index = 2;
    type ="Female";
    notifyListeners();
  }
}