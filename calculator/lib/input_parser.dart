class InputParser {
  static List<double> parseOperands(String input, String operator) {
    final numbers =
        input.split(' ').where((number) => number != operator).toList();
    final operands = numbers.map((part) => double.tryParse(part)).toList();

    if (operands.any((operand) => operand == null)) {
      throw '입력이 옳바른지 확인하고 다시 입력해주세요.';
    }

    return operands.cast<double>();
  }
}