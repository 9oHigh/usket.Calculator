import 'dart:io';
import 'package:calculator/calculator.dart';

void main() {
  print('계산기 테스트를 진행하겠습니다.');
  print('사용 방법: <operand1> <operator> <operand2> 의 형태로 띄어쓰기에 주의해주세요.');
  print('제공되는 연산자: +, -, *, /');
  print('테스트를 종료하시려면 "exit" 을 입력해주세요.');

  final calculator = Calculator();

  while (true) {
    stdout.write('입력: ');
    final input = stdin.readLineSync();

    if (input == null || input.trim().isEmpty) {
      print("--------------------------------");
      print('입력이 옳바른지 확인하고 다시 입력해주세요.');
      print("--------------------------------");
      continue;
    }

    if (input.toLowerCase() == 'exit') {
      print("--------------------------------");
      print('프로그램을 종료합니다.');
      print("--------------------------------");
      break;
    }

    final expression = input.split(' ');

    if (expression.length != 3) {
      print("--------------------------------");
      print('잘못된 입력입니다.\n사용 방법: <operand1> <operator> <operand2>');
      print("--------------------------------");
      continue;
    }

    final a = double.tryParse(expression[0]);
    final b = double.tryParse(expression[2]);
    final operator = expression[1];

    if (a == null || b == null) {
      print("--------------------------------");
      print('operand 에는 숫자를 입력해주세요.');
      print("--------------------------------");
      continue;
    }

    try {
      final result = calculator.calculate(a, operator, b);
      print('결과: $result');
      print("--------------------------------");
    } catch (e) {
      print('에러: $e');
      print("--------------------------------");
    }
  }
}
