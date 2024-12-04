library calculator;

import 'package:calculator/operation/operation_factory.dart';

class Calculator {
  double calculate(double a, String operator, double b) {
    final operation = OperationFactory.getOperation(operator);
    return operation.execute(a, b);
  }
}
