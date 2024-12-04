import 'package:calculator/operations/add_operation.dart';
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
}
