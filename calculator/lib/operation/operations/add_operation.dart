import 'package:calculator/operation/operations/interface/operation.dart';

class AddOperation implements Operation {
  @override
  double execute(List<double> operands) {
    if (operands.length != 2) {
      throw "더하기를 수행하기 위해서 두 개의 숫자가 필요합니다.";
    }
    return operands[0] + operands[1];
  }
}
