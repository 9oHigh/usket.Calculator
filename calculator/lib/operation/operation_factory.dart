import 'package:calculator/operation/operations/add_operation.dart';
import 'package:calculator/operation/operations/divide_operation.dart';
import 'package:calculator/operation/operations/interface/operation.dart';
import 'package:calculator/operation/operations/multiply_operation.dart';
import 'package:calculator/operation/operations/subtract_operation.dart';

class OperationFactory {
  static Operation getOperation(String operator) {
    switch (operator) {
      case '+':
        return AddOperation();
      case '-':
        return SubtractOperation();
      case '*':
        return MultiplyOperation();
      case '/':
        return DivideOperation();
      default:
        throw ArgumentError('Unsupported operator: $operator');
    }
  }
}
