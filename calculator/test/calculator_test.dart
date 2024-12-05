import 'package:calculator/calculator.dart';
import 'package:calculator/input_parser.dart';
import 'package:calculator/operation/operations/add_operation.dart';
import 'package:calculator/operation/operations/divide_operation.dart';
import 'package:calculator/operation/operations/multiply_operation.dart';
import 'package:calculator/operation/operations/subtract_operation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testInputParser();
  testOperations();
  testCalculator();
}

void testInputParser() {
  group("ParseOperands", () {
    test("parse operands from input", () {
      const String input = "3 * 7";
      const String operator = "*";
      expect(InputParser.parseOperands(input, operator), equals([3, 7]));
    });

    test("parse operands from input", () {
      const String input = "60 sin";
      const String operator = "sin";
      expect(InputParser.parseOperands(input, operator), equals([60]));
    });
  });
}

void testOperations() {
  group("AddOperation", () {
    test("return sum of two numbers", () {
      final operation = AddOperation();
      expect(operation.execute([1, 2]), equals(3));
    });
  });

  group("SubtractOperation", () {
    test("return difference of two numbers", () {
      final operation = SubtractOperation();
      expect(operation.execute([2, 1]), equals(1));
    });
  });

  group("MultiplyOperation", () {
    test("return product of two numbers", () {
      final operation = MultiplyOperation();
      expect(operation.execute([3, 1]), equals(3));
    });
  });

  group("DivideOperation", () {
    test("return quotient of two numbers", () {
      final operation = DivideOperation();
      expect(operation.execute([4, 2]), equals(2));
    });

    test("throw error when dividing by zero", () {
      final operation = DivideOperation();
      expect(() => operation.execute([4, 0]), throwsArgumentError);
    });
  });
}

void testCalculator() {
  group("Calculator", () {
    test("calculate by taking operator and operands", () {
      final Calculator calculator = Calculator();
      expect(calculator.calculate("+", [1, 2]), equals(3));
    });
  });
}
