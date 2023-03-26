part of calculator;

/// Class that is responsible for initializing the calculator.
///
/// It contains a single static method and public starts a new instance of
/// the [CalculatorOperations] class and starts the requests.
class CalculatorOperations {
  CalculatorOperations._();

  /// Start the calculator
  static void init() {
    /// Create a instance of [CalculatorOperations]
    final CalculatorOperations instance = CalculatorOperations._();

    /// Requests the type of operation to execute
    final OperationType operationType = instance._requestOperationType();

    /// Request the type of operation you want to perform
    final List<double> listValues = requestOperationValues();

    /// Run the operation
    instance._executeOperation(operationType, listValues);
  }

  /// Request the type of operation you want to perform
  OperationType _requestOperationType() {
    final operationResult = Menu<int>(
      label: '\n💡Enter the option of the operation you want to perform:',
      options: [
        MenuOptions(
          text: OperationType.addition.text,
          value: OperationType.addition.code,
        ),
        MenuOptions(
          text: OperationType.subtraction.text,
          value: OperationType.subtraction.code,
        ),
        MenuOptions(
          text: OperationType.multiplication.text,
          value: OperationType.multiplication.code,
        ),
        MenuOptions(
          text: OperationType.division.text,
          value: OperationType.division.code,
        ),
      ],
    ).writeResponse();

    OperationType type;
    try {
      type = OperationType.fromCode(int.parse(operationResult ?? '0'));
    } catch (e) {
      type = OperationType.unknown;
    }

    if (type == OperationType.unknown) {
      print('\n❌You have entered an invalid option, please try again.');
      return _requestOperationType();
    }

    return type;
  }

  /// Method that is responsible for executing the operation
  void _executeOperation(OperationType operation, List<double> listValues) {
    Operation op;
    switch (operation) {
      /// Addition operation
      case OperationType.addition:
        op = AdditionOperation(listValues);
        break;
      case OperationType.subtraction:
        op = SubtractionOperation(listValues);
        break;
      case OperationType.multiplication:
        op = MultiplicationOperation(listValues);
        break;
      case OperationType.division:
        op = DivisionOperation(listValues);
        break;
      default:
        print('\n\n❌Unknown operation: $operation');
        exit(1);
    }

    op.printResult();
  }
}
