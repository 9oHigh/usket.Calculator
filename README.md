# usket.Calculator
### 설명
  * 계산기 만들기
  * 최종 제품은 삼각함수 ( 사인, 코사인, 탄젠트 및 그 역수), 미적분 ( 적분과 미분 ), 그리고 로그 함수와 같은 더 복잡한 연산을 지원할 수 있을 것이다.
* 요구사항
  * 스프린트(첫 번째 이터레이션)에서는 계산기 펌웨어에 기본 산술 연산을 구현한다.
  * QA 팀이 계산기를 테스트할 수 있도록 하기 위해 입력을 명령행 프로그램으로, 인수를 받도록 해야한다.
  * Operations
    * Addition
    * Subtraction
    * Division
    * Operation ::= +, -, *, /
  * Operands
    * Operand ::= [0-9]+[.]?[0-9]*
    * No thousand separators(i.e.,,)
  * Inputs
    * Input ::= Operand Operation Operand
  * Outputs
    * No thousand separators required (i.e.,,)
    * Print the result to the console
  * TDD 방식을 통해 수행 (단, 불가능할 경우, Unit Test 코드 작성)
  * 다음 스프린트에서는 삼각함수인 사인과 코사인 함수 지원 예정
* 요구사항 분석
  * 스프린트에서 사칙연산이 가능한 계산기를 만들되 QA 팀이 테스트할 수 있도록 명령행 프로그램으로 만들것
  * 피연산자의 경우, 실수 범위로 제한하고 1,000 이상의 수에서는 컴마(,)를 사용하지 않도록 한다.
  * 입력 형식은 [피연산자 연산자 피연산자]를 따른다.
  * 결과값은 표시하되 1,000 이상의 수에서는 컴마(,)를 사용하지 않도록 한다.
  * 다음 스프린트와 최종 제품의 기능을 위해 유지보수성을 갖춰야한다.
  * TDD 방식을 통해 수행한다. 
    * RED: 기능 구현 이전 해당 기능에 대한 테스트 코드를 작성 ( 테스트가 실패 )
    * GREEN: 실패한 테스트를 통과하도록 최소한의 코드를 작성
    * REFACTOR: 가독성, 효율성, 예외 처리 등을 고려해 수정한다.
    * 위의 3가지의 과정을 반복한다.

### 중간 점검
* 중간 점검 지점: [Commit ad4f22f](https://github.com/9oHigh/usket.Calculator/tree/ad4f22f67b8042d52fd931a55e4ddc42e30caed3/calculator/lib)
  * 문제점
    * 사칙연산을 제외한 삼각함수, 로그 등 추가될 계산식에서는 execute 메서드는 사용할 수 없다.
      * ex ) operand operator operand 형식이 아닌 operator operand (log 10, sin 60...)의 형태로 입력될 수 있기 때문이다.
    * 미분과 적분의 경우에도 입력 방식이 execute 메서드와 상이할 것이다. 
  * 해결 방안
    * 추후 추가될 연산들을 위해 execute 메서드의 인수를 List<double>로 변경이 필요
    * 각 사칙연산 클래스에서 execute 메서드 수정 
      * 매개변수의 길이가 조건에 충족하지 않는 다면 에러 반환
    * 다음 이터레이션을 위해 
      * 입력된 내용을 처리하는 InputParser 클래스 추가 및 테스트
      * Placeholder 코드 및 주석 추가

### 최종 점검
* 최종 점검 지점: [Commit main](https://github.com/9oHigh/usket.Calculator/tree/main)
  * 아쉬운 점
    * 계산기 실행시, 정규식을 통해서 input을 처리했는데 좋은 방법이 아닌 것 같다. 추가될 수 있는 많은 함수와 계산식이 있을 것이기 때문이다. InputParger 혹은 추가적으로 해당 Input이 valid 한지 확인하는 클래스가 필요할 것 같다.
  * 배운 것
    * TDD 방식의 개발
      * 실패할 코드를 작성하고, 테스트에 통과하는 코드를 작성, 마지막으로 리팩토링하는 과정을 반복하면서 TDD 방식이 주는 이점들을 확실히 알 수 있었다. 향후 TDD 기반의 애플리케이션을 만들면서 확실하게 익혀보고자 한다.


### 사용방법
* 계산기
  * git clone 이후, calculator 디렉토리로 이동 및 아래의 명령어를 입력
    
      ```shell
      dart lib/main.dart
      ```
* 테스트
  * git clone 이후, calculator 디렉토리로 이동 및 아래의 명령어를 입력
  
    ```shell
    flutter test test/calculator_test.dart
    ```