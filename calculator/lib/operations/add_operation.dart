import 'package:calculator/operations/interface/operation.dart';

class AddOperation implements Operation {
  @override
  double excute(double a, double b) {
    return a + b;
  }
}
