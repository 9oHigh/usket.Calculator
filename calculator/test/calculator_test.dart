import 'package:flutter_test/flutter_test.dart';
import 'package:calculator/calculator.dart';

void main() {
  group("AddOperation", () {
    test("return sum of two numbers", () {
      final operation = AddOperation();
      expect(operation.excute(1, 2), equals(3));
    });
  });
}
