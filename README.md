# Calculator Dart Library

The `calculator_dart_library` library is a Dart library that provides basic functions for performing mathematical operations, including addition, subtraction, multiplication, and division. It is made up of a root file called `calculator.dart` that exposes the classes and functions needed to interact with the library, as well as several implementation files that contain the logic to perform each type of operation.

The root `calculator.dart` file imports the implementation files and exports the classes and functions needed to interact with the library. It also contains functions to prompt the user for the number of numbers to be operated and the values of those numbers, as well as an enumeration to represent the type of operation to be performed.

The implementation files contain the logic to perform each type of mathematical operation, as well as an interface that defines the methods that should implement each of the operations.

In summary, the `calculator` library provides basic functionality for performing mathematical operations in Dart and is made up of several files that work together to perform these operations.

## Folder Structure

``` 
├── bin/
├── doc/
├── lib/
│   ├── calculator.dart
│   ├── src/
│   │   ├── calculator_operations.dart
│   │   ├── operations/
│   │   │   ├── addition_operation.dart
│   │   │   ├── division_operation.dart
│   │   │   ├── multiplication_operation.dart
│   │   │   ├── operation_interface.dart
│   │   │   └── subtraction_operation.dart
│   │   └── utils/
│   │       ├── menu.dart
│   │       └── operation_type_enum.dart
└── README.md

```

## Usage and Installation

To install the library, you can add the following package to your `pubspec.yaml` file:
```
dependencies:
  calculator_library:
    git: https://github.com/joicodev/calculator_dart_library.git
```

Then, in the terminal, you can run flutter pub get to download the dependencies.

**Local installation**
Clone the repository to your local machine:

``` 
git clone https://github.com/joicodev/calculator_dart_library.git
```

Open the terminal and navigate to the project folder:

```
cd calculator_library
```
Run the following command to install the dependencies:

```
dart pub get
```

To use the library, import the calculator.dart file into your project and use the functions and classes found within it.

```dart
import 'package:calculator_library/calculator.dart' as calc;

void main(List<String> arguments) {
  /// Start the calculator
  calc.CalculatorOperations.init();

  /// Start a division operation
  List<double> values = calc.requestOperationValues();
  final division = calc.DivisionOperation(values);
  division.printResult();
}
```

## Execute library documentation

To run the library's documentation, you must first install DartDoc with the following command in Terminal:

``` dart
pub global activate dartdoc
```

## Viewing docs
You can view the generated docs directly from the file system, but if you want to use the search function, you must load them with an HTTP server.

An easy way to run an HTTP server locally is to use the dhttpd package. For example:
```
dart pub global activate dhttpd
dhttpd --path doc/api
```
