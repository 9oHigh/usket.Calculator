import 'package:calculator/operations/add_operation.dart';
import 'package:calculator/operations/multiply_operation.dart';
import 'package:calculator/operations/subtract_operation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("AddOperation", () {
    test("return sum of two numbers", () {
      final operation = AddOperation();
      expect(operation.excute(1, 2), equals(3));
    });
  });

  group("SubtractOperation", () {
    test("return difference of two numbers", () {
      final operation = SubtractOperation();
      expect(operation.excute(2, 1), equals(1));
    });
  });

  group("MultiplyOperation", () {
    test("return product of two numbers", () {
      final operation = MultiplyOperation();
      expect(operation.excute(3, 1), equals(3));
    });
  });

  group("DivideOperation", () {
    test("return quotient of two numbers", () {
      final operation = DivideOperation();
      expect(operation.excute(4, 2), equals(2));
    });
  });
}
