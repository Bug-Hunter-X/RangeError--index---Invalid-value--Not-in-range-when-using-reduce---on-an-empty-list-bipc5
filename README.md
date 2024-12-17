# Dart Reduce Method Error on Empty List

This repository demonstrates a common error encountered when using the `reduce()` method in Dart with an empty list. The `reduce()` method requires at least one element in the list; otherwise, it throws a `RangeError`.

## Problem

The following Dart code attempts to use `reduce()` on an empty list:
```dart
List<int> emptyNumbers = [];
int emptySum = emptyNumbers.reduce((a, b) => a + b);
print(emptySum); // Throws RangeError
```
This results in a `RangeError` because the `reduce()` method cannot find an initial value to start reducing from.

## Solution

To avoid this error, check if the list is empty before applying `reduce()`.  A safe approach is to use a conditional statement or the `fold()` method, which provides a default value for an empty list:
```dart
List<int> numbers = [];
int sum = numbers.fold<int>(0, (int a, int b) => a + b);
print(sum); // Output: 0
```
The `fold()` method takes an initial value (here, 0) and applies the function.  If the list is empty, the initial value is returned.

This example showcases best practice to prevent `RangeError` when using `reduce()` or similar aggregate methods.