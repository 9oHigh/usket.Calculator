import 'dart:io';
import 'package:calculator/calculator.dart';
import 'package:calculator/input_parser.dart';

void main() {
  print('계산기 테스트를 진행하겠습니다.');
  print('사용 방법: <operand1> <operator> <operand2> 의 형태로 띄어쓰기에 주의해주세요.');
  print('제공되는 연산자: +, -, *, /');
  print('테스트를 종료하시려면 "exit" 을 입력해주세요.');

  final calculator = Calculator();

  while (true) {
    stdout.write('입력: ');
    final input = stdin.readLineSync()!;
    // 차기 이터레이션에서 수정 필요
    const pattern = r'^\d+(\.\d+)?\s*[+\-*/]\s*\d+(\.\d+)?$';
    final regex = RegExp(pattern);

    if (input.toLowerCase() == 'exit') {
      print("--------------------------------");
      print('프로그램을 종료합니다.');
      print("--------------------------------");
      break;
    }

    if (!regex.hasMatch(input)) {
      print("--------------------------------");
      print('입력이 옳바른지 확인하고 다시 입력해주세요.');
      print("--------------------------------");
      continue;
    }
    final expression = input.split(' ');
    String operator =
        expression.firstWhere((exp) => ['+', '-', '*', '/'].contains(exp));
    final operands = InputParser.parseOperands(input, operator);

    try {
      final result = calculator.calculate(operator, operands);
      print('결과: $result');
      print("--------------------------------");
    } catch (e) {
      print('에러: $e');
      print("--------------------------------");
    }
  }
}
