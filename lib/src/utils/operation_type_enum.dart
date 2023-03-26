enum OperationType {
  addition(1, 'Addition'),
  subtraction(2, 'Subtraction'),
  multiplication(3, 'Multiplication'),
  division(4, 'Division'),
  unknown(0, 'Unknown'),
  ;

  final int code;
  final String text;

  const OperationType(this.code, this.text);

  /// Build a label
  String get label => '$code: $text';

  /// Create an OperationType from an integer
  static OperationType fromCode(int code) {
    try {
      return OperationType.values.firstWhere((e) => e.code == code);
    } catch (_) {
      return OperationType.unknown;
    }
  }
}
