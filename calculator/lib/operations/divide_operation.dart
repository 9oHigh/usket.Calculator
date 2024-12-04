import 'package:calculator/operations/interface/operation.dart';

class DivideOperation implements Operation {
  @override
  double execute(double a, double b) {
    if (b == 0) {
      throw ArgumentError("Division by zero is not allowed");
    }
    return a / b;
  }
}
