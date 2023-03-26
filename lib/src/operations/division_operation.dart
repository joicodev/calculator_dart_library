import 'package:calculator_library/src/operations/operation_interface.dart';

/// Class that receives an array of numbers and performs a division
class DivisionOperation implements Operation {
  final List<double> values;
  double? _result;

  DivisionOperation(this.values);

  @override
  double execute() => _result = values.reduce((a, b) => a / b);

  @override
  void printResult() {
    print('\n🧮The result of your Division is: ${_result ?? execute()}');
  }
}
