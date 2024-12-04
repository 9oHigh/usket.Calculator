import 'package:calculator/operation/operations/interface/operation.dart';

class DivideOperation implements Operation {
  @override
  double execute(double a, double b) {
    if (b == 0) {
      throw "0 으로는 나눌 수 없습니다.";
    }
    return a / b;
  }
}
