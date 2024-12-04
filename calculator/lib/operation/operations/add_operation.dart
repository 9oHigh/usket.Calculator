import 'package:calculator/operation/operations/interface/operation.dart';

class AddOperation implements Operation {
  @override
  double execute(double a, double b) {
    return a + b;
  }
}