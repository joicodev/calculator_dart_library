import 'operation_interface.dart';

/// Class that receives an array of numbers and performs a sum
class AdditionOperation implements Operation {
  final List<double> values;
  double? _result;

  AdditionOperation(this.values);

  @override
  double execute() => _result = values.reduce((a, b) => a + b);

  @override
  void printResult() {
    print('\n🧮The result of your Addition is: ${_result ?? execute()}');
  }
}
