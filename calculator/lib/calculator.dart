library calculator;

import 'package:calculator/operation/operation_factory.dart';

class Calculator {
  double calculate(String operator, List<double> operands) {
    final operation = OperationFactory.getOperation(operator);
    return operation.execute(operands);
  }
}
