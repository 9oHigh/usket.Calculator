import 'package:calculator/operations/interface/operation.dart';

class SubtractOperation implements Operation {
  @override
  double execute(double a, double b) {
    return a - b;
  }
}
