/// A library that performs basic mathematical calculation functions with [AdditionOperation], [DivisionOperation], [MultiplicationOperation], [SubtractionOperation].
library calculator;

import 'dart:io';

import 'package:calculator_library/src/operations/division_operation.dart';
import 'package:calculator_library/src/operations/multiplication_operation.dart';
import 'package:calculator_library/src/operations/operation_interface.dart';
import 'package:calculator_library/src/operations/subtraction_operation.dart';
import 'package:calculator_library/src/operations/addition_operation.dart';
import 'package:calculator_library/src/utils/menu.dart';
import 'package:calculator_library/src/utils/operation_type_enum.dart';

export 'package:calculator_library/src/operations/division_operation.dart';
export 'package:calculator_library/src/operations/multiplication_operation.dart';
export 'package:calculator_library/src/operations/subtraction_operation.dart';
export 'package:calculator_library/src/operations/addition_operation.dart';

part 'package:calculator_library/src/calculator_operations.dart';

/// Request the quantity of numbers you want to operate
int _requestQuantityNumbersToOperate() {
  final operationResult = Menu<int>(
    label: '\n💡Enter the quantity of numbers you want to operate:',
  ).writeResponse();

  try {
    return int.parse(operationResult ?? '0');
  } catch (e) {
    print('\n❌You have entered an invalid value, please try again.');
    return _requestQuantityNumbersToOperate();
  }
}

/// Function that requests the values of the operation
List<double> requestOperationValues() {
  double requestValue(int i) {
    final result = Menu(
      label: '\n✏️Enter the value #${i + 1}:',
    ).writeResponse();

    try {
      return double.parse(result!);
    } catch (e) {
      print('\n\n❌The entered value is not valid');
      return requestValue(i);
    }
  }

  final List<double> listValues = [];

  /// Request the type of operation you want to perform
  final int quantityOperations = _requestQuantityNumbersToOperate();

  /// It asks you to enter the numbers
  for (int i = 0; i < quantityOperations; i++) {
    listValues.add(requestValue(i));
  }

  return listValues;
}
