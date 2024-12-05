import 'package:calculator/operation/operations/add_operation.dart';
import 'package:calculator/operation/operations/divide_operation.dart';
import 'package:calculator/operation/operations/interface/operation.dart';
import 'package:calculator/operation/operations/multiply_operation.dart';
import 'package:calculator/operation/operations/subtract_operation.dart';

class OperationFactory {
  
  static Operation getOperation(String operator) {
    if (['+', '-', '*', '/'].contains(operator)) {
      return _getElementryOperation(operator);
    } else {
      throw '제공되지 않는 연산자: $operator';
    }
  }

  static Operation _getElementryOperation(String operator) {
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
        throw '제공되지 않는 연산자: $operator';
    }
  }
  //TODO: implements SineOperation, CosineOperation and add a case to the getOperation method
  /*
  [Placeholder]
  static Operation _getTrigonometricOperation(String operator) {
    switch (operator) {
      case 'sin':
        return SineOperation();
      case 'cos':
        return CosineOperation();
      default:
        throw ArgumentError('Unsupported trigonometric operator: $operator');
    }
  } 
  */
}
