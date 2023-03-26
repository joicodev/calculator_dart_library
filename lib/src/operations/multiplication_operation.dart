import 'package:calculator_library/src/operations/operation_interface.dart';

/// Class that receives an array of numbers and performs a multiplication
class MultiplicationOperation implements Operation {
  final List<double> values;
  double? _result;

  MultiplicationOperation(this.values);

  @override
  double execute() => _result = values.reduce((a, b) => a * b);

  @override
  void printResult() {
    print('\n🧮The result of your Multiplication is: ${_result ?? execute()}');
  }
}
