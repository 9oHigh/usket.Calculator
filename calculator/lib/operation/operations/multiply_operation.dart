import 'package:calculator/operation/operations/interface/operation.dart';

class MultiplyOperation implements Operation {
  @override
  double execute(double a, double b) {
    return a * b;
  }
}