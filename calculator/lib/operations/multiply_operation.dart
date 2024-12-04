import 'package:calculator/operations/interface/operation.dart';

class MultiplyOperation implements Operation {
  @override
  double excute(double a, double b) {
    return a * b;
  }
}