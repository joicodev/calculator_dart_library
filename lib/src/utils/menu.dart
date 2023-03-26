import 'dart:io';

class Menu<T> {
  /// Label is the question
  final String label;

  /// Options that appear to select
  final List<MenuOptions<T>>? options;

  Menu({
    this.options,
    required this.label,
  }) {
    _execute();
  }

  /// Execute menu
  void _execute() {
    _question();
    _choose();
  }

  /// Method that print the question to the console or terminal.
  void _question() => print(label);

  /// Method that print the options to the console or terminal.
  void _choose() {
    if (options != null) {
      for (int i = 0; i < options!.length; i++) {
        print('${i + 1}. ${options![i].text}');
      }
    }
  }

  /// Request a response from the client
  String? writeResponse() => stdin.readLineSync();
}

/// Class that defines the menu options
class MenuOptions<T> {
  /// Option value
  final T value;

  /// Text for the option
  final String text;

  MenuOptions({
    required this.text,
    required this.value,
  });
}
