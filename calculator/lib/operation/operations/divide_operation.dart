import 'package:calculator/operation/operations/interface/operation.dart';

class DivideOperation implements Operation {
  @override
  double execute(List<double> operands) {
    if (operands.length != 2) {
      throw "나누기를 수행하기 위해서 두 개의 숫자가 필요합니다.";
    }
    if (operands[1] == 0) {
      throw "0 으로는 나눌 수 없습니다.";
    }
    return operands[0] / operands[1];
  }
}
