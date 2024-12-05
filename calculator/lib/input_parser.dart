class InputParser {
  static List<double> parseOperands(String input, String operator) {
    final numbers = input.split(' ').where((number) => number != operator).toList();
    final operands = numbers
        .map((part) => double.tryParse(part))
        .toList();
    return operands.cast<double>();
  }
}