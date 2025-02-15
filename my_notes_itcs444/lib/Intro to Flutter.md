---
title: "Introduction to flutter"
author: "Alya Shawqi Ameen"
---

# Dart Language Overview

## Introduction to Dart
Dart is an object-oriented programming language designed for building frontend and backend applications. It is mainly used with Flutter to build cross-platform mobile apps.

## Getting Started with Dart
Use [DartPad](https://dartpad.dartlang.org/) to write and run Dart code online.

Example:
```dart
void main() {
  print('Hello, Dart!');
}
```

## Variables and Data Types
Dart has strong typing, but you can use `var` for type inference.

Example:
```dart
int age = 25;
double pi = 3.14;
bool isFlutterAwesome = true;
String name = "Dart";
```

## Control Flows and Looping
### Conditional Statements:
```dart
if (age > 18) {
  print("You are an adult");
} else {
  print("You are a minor");
}
```

### Looping:
```dart
for (int i = 0; i < 3; i++) {
  print("Loop iteration: \$i");
}
```

## Functions and Methods
```dart
void greet(String name) {
  print("Hello, \$name!");
}

greet("Alice");
```

## Object-Oriented Programming
Dart supports classes and objects.

Example:
```dart
class Car {
  String brand;
  
  Car(this.brand);
  
  void showBrand() {
    print("Car brand is: \$brand");
  }
}

void main() {
  Car myCar = Car("Tesla");
  myCar.showBrand();
}
```

## Operators
### Arithmetic Operators:
```dart
int sum = 5 + 3;
int product = 4 * 2;
double division = 10 / 2;
print(sum); // 8
print(product); // 8
print(division); // 5.0
```

### Logical Operators:
```dart
bool isTrue = true && false;
bool isFalse = !true;
print(isTrue);  // false
print(isFalse); // false
```

## Null Safety
Dart ensures variables cannot be null unless explicitly allowed.

Example:
```dart
int? nullableNumber;
print(nullableNumber); // null
nullableNumber = 10;
print(nullableNumber); // 10
```

## Lists and Maps
### Lists:
```dart
List<String> fruits = ["Apple", "Banana", "Cherry"];
print(fruits[0]); // Apple
```

### Maps:
```dart
Map<String, int> ages = {"Alice": 25, "Bob": 30};
print(ages["Alice"]); // 25
```

## String Manipulation
```dart
String greeting = "Hello";
String name = "Dart";
String message = "\$greeting, \$name!";
print(message); // Hello, Dart!
```

## Final and Const
```dart
final DateTime now = DateTime.now();
const double pi = 3.1415;
print(now);
print(pi);
```

## Anonymous Functions
```dart
List<int> numbers = [1, 2, 3, 4];
numbers.forEach((num) => print("Number: \$num"));
```


# Main file `Named MyApp`:
```dart
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        )//Center
      ),//Scaffold
    );//MaterialApp
  }
}
```
### A main file is the file that will be in run, but we can import other files in the main file so they will be running instead.
- `Main method main()`: it is the method that shows that this file shoud be the executable file, and its job is to run `MyApp()` file.
- `const MyApp({super.key})`: here we created a constructor that passes the key to the super class wich is the `StatelessWidget` class;
- `Widget build(BuildContext context) {`: Here we initiated a function that takes `context` as a parameter.
- `return const MaterialApp(`: This function will return a composed widget that is suitable for Android devices.
- `home: Scaffold(`:the first big widget is the `Scaffold` and it is calld `home`.
- `body: Center(`: Here we have a wedget that will display any thing inside it in the center of the page and it is called `body`.
- `child: Text('Hello World!')`: Here is the `child` wedget which contain a text.



# Other file `Named location_datail`:

```dart
import 'package:flutter/material.dart';

class LocationDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            // Row is the actual widget being used as the title
            children: [
              Icon(Icons.home),
              SizedBox(width: 8),
              Text('Home'),
            ],
          ),
        ),
        body: Text(''));
  }
}
```
## This file will not be executed becauce we did not import it in the main page, to do that we should modify the main file to be:
```dart
import 'package:flutter/material.dart';
import 'location_detail.dart'; // Import the file

void main() {
  runApp(MaterialApp(
    home: LocationDetail(), // Set LocationDetail as the home screen
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        )//Center
      ),//Scaffold
    );//MaterialApp
  }
}
```
- `import location_detail.dart`: Here we imported the other file.
- Also we modified the `main()` to run the `location_detail` file.
