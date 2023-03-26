import 'package:calculator_library/src/operations/operation_interface.dart';

/// Class that receives an array of numbers and performs a subtraction
class SubtractionOperation implements Operation {
  final List<double> values;
  double? _result;

  SubtractionOperation(this.values);

  @override
  double execute() => _result = values.reduce((a, b) => a - b);

  @override
  void printResult() {
    print('\n🧮The result of your Subtraction is: ${_result ?? execute()}');
  }
}
